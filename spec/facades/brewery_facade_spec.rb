require 'rails_helper'

RSpec.describe BreweryFacade do
  it 'can create breweries with lat and log and quantity', :vcr do
    location = LocationFacade.create_location('Denver, CO')
    expect(location).to be_a(Location)
  end
end
