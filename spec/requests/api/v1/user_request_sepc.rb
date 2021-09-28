require 'rails_helper'

RSpec.describe 'user API' do
  it 'can create a new user and generate api_key', :vcr do
    user_attributes = {
      email: 'test@test.com',
      password: 'password',
      password_confirmation: 'password'
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/users', headers: headers, params: user_attributes.to_json

    expect(response).to have_http_status(201)

    response = JSON.parse(response.body, symbolize_names: true)

    expect(response[:data]).to have_key([:id])
    expect(response[:data]).to have_key([:type])
    expect(response[:data]).to have_key([:attributes])
    expect(response[:data][:attributes]).to have_key([:email])
    expect(response[:data][:attributes]).to have_key([:api_key])
    expect(response[:data][:attributes]).to_not have_key([:password_digest])
  end

  it 'returns 400 error if password and password_confirmation do match' do
    user_attributes = {
      email: 'test@test.com',
      password: 'potato',
      password_confirmation: 'password'
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/users', headers: headers, params: user_attributes.to_json

    expect(response).to have_http_status(400)
  end

  it 'returns 400 error if email already exists' do
    user = User.create!(email: 'test@test.com', password_digest: "$2a$04$uoYSPIV4t.z5O4rhHa6I.OcnAzJnlrl90sOQuMop6F62EwzCgTSGW", api_key: "02b1f503a4920179032b4c36103c1053")

    user_attributes = {
      email: 'test@test.com',
      password: 'password',
      password_confirmation: 'password'
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/users', headers: headers, params: user_attributes.to_json

    expect(response).to have_http_status(400)
  end

  it 'returns 400 error if a field is missing' do
    user_attributes = {
      email: 'test@test.com',
      password: 'password'
    }

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept": 'application/json' }

    post '/api/v1/users', headers: headers, params: user_attributes.to_json

    expect(response).to have_http_status(400)
  end
end
