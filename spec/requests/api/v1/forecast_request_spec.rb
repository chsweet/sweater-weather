require 'rails_helper'

RSpec.describe 'forecast API' do
  it 'sends forecast based on location in params', :vcr do
    get '/api/v1/forecast', params: { location: 'Denver, CO' }

    expect(response).to be_successful

    forecast = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(forecast).to have_key(:id)
    # expect(forecast[:id]).to eq(null)
    expect(forecast).to have_key(:type)
    expect(forecast).to have_key(:attributes)

    expect(forecast[:attributes]).to have_key(:current_weather)
    expect(forecast[:attributes][:current_weather]).to be_a(Hash)
    expect(forecast[:attributes]).to have_key(:daily_weather)
    expect(forecast[:attributes][:daily_weather]).to be_a(Array)
    expect(forecast[:attributes]).to have_key(:hourly_weather)
    expect(forecast[:attributes][:hourly_weather]).to be_a(Array)
  end
end
