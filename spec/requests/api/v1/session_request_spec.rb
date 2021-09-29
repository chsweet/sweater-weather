require 'rails_helper'

RSpec.describe 'sessions API' do
  it 'can authenticate user credentials' do
    user = User.create!(email: 'test@test.com', password_digest: "$2a$04$uoYSPIV4t.z5O4rhHa6I.OcnAzJnlrl90sOQuMop6F62EwzCgTSGW")

    user_login = {
      "email": 'test@test.com',
      "password": 'password',
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/sessions', headers: headers, params: user_login.to_json

    expect(response).to have_http_status(200)

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data]).to have_key(:id)
    expect(json[:data]).to have_key(:type)
    expect(json[:data]).to have_key(:attributes)
    expect(json[:data][:attributes]).to have_key(:email)
    expect(json[:data][:attributes][:email]).to eq("test@test.com")
    expect(json[:data][:attributes]).to have_key(:api_key)
    expect(json[:data][:attributes][:api_key]).to eq(user.api_key)
    expect(json[:data][:attributes]).to_not have_key(:password_digest)
  end

  it 'returns 400 error if user is not found' do
    user = User.create!(email: 'test@test.com', password_digest: "$2a$04$uoYSPIV4t.z5O4rhHa6I.OcnAzJnlrl90sOQuMop6F62EwzCgTSGW", api_key: "02b1f503a4920179032b4c36103c1053")

    user_login = {
      "email": 'somthing@different.com',
      "password": 'password',
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/sessions', headers: headers, params: user_login.to_json

    expect(response).to have_http_status(404)

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:message]).to eq("User does not exist. Please register!")
  end

  it 'returns 400 error if password is invalid' do
    user = User.create!(email: 'test@test.com', password_digest: "$2a$04$uoYSPIV4t.z5O4rhHa6I.OcnAzJnlrl90sOQuMop6F62EwzCgTSGW", api_key: "02b1f503a4920179032b4c36103c1053")

    user_login = {
      "email": 'test@test.com',
      "password": 'bad password',
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/sessions', headers: headers, params: user_login.to_json

    expect(response).to have_http_status(404)

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:message]).to eq("User email or password is invalid.")
  end
end
