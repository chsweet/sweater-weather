require 'rails_helper'

RSpec.describe OpenBreweryService do
  it 'can get lat and long for location given in params', :vcr do
    json = OpenBreweryService.get_location_breweries('39.738453,-104.984853', 5)

    expect(json.count).to eq(5)
    expect(json[0]).to have_key(:id)
    expect(json[0]).to have_key(:name)
    expect(json[0]).to have_key(:brewery_type)
  end
end
