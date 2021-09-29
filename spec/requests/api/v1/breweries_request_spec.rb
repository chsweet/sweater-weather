require 'rails_helper'

RSpec.describe 'breweries API' do
  it 'sends breweries and current forecast for location in params', :vcr do
    get '/api/v1/breweries', params: { location: 'Denver, CO', quantity: 5 }

    expect(response).to be_successful

    breweries = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(breweries).to have_key(:id)
    expect(breweries).to have_key(:type)
    expect(breweries[:type]).to eq("breweries")
    expect(breweries).to have_key(:attributes)
    expect(breweries[:attributes]).to have_key(:destination)
    expect(breweries[:attributes][:destination]).to eq("Denver, CO")
    expect(breweries[:attributes]).to have_key(:forecast)
    expect(breweries[:attributes][:forecast]).to have_key(:summary)
    expect(breweries[:attributes][:forecast]).to have_key(:temperature)
    expect(breweries[:attributes]).to have_key(:breweries)
    expect(breweries[:attributes][:breweries]).to be_a(Array)
    expect(breweries[:attributes][:breweries].count).to eq(5)
    expect(breweries[:attributes][:breweries][0]).to have_key(:id)
    expect(breweries[:attributes][:breweries][0]).to have_key(:name)
    expect(breweries[:attributes][:breweries][0]).to have_key(:brewery_type)
  end

  it 'returns 400 error if quantity sent is not greater than 0', :vcr do
    get '/api/v1/breweries', params: { location: 'Denver, CO', quantity: -1 }

    expect(response).to have_http_status(400)
  end
end
