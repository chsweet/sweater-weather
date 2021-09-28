require 'rails_helper'

RSpec.describe 'background API' do
  it 'sends background image based on location in params', :vcr do
    get '/api/v1/backgrounds', params: { location: 'Denver, CO' }

    expect(response).to be_successful

    background = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(background).to have_key(:id)
    # expect(background[:id]).to eq(null)
    expect(background).to have_key(:type)
    expect(background).to have_key(:attributes)

    expect(background[:attributes]).to have_key(:image)
    expect(background[:attributes][:image]).to have_key(:location)
    expect(background[:attributes][:image]).to have_key(:image_url)
    expect(background[:attributes][:image]).to have_key(:credit)
    expect(background[:attributes][:image][:credit]).to have_key(:source)
    expect(background[:attributes][:image][:credit]).to have_key(:author)
    expect(background[:attributes][:image][:credit]).to have_key(:author_link)

  end
end
