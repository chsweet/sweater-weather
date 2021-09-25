require 'rails_helper'

RSpec.describe LocationFacade do
  it 'can create location with lat and log', :vcr do
    location = LocationFacade.create_location('Denver, CO')
    expect(location).to be_a(Location)
  end
end
