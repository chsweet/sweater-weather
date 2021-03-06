require 'rails_helper'

RSpec.describe BreweryFacade do
  it 'can create breweries with lat and log and quantity', :vcr do
    breweries = BreweryFacade.create_breweries('39.738453,-104.984853', 5)

    expect(breweries).to be_an(Array)
    expect(breweries[0]).to be_a(Brewery)
  end
end
