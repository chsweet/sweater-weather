require 'rails_helper'

RSpec.describe RoadTripFacade do
  it 'can create forecast for location', :vcr do
    roadtrip = RoadTripFacade.create_roadtrip('Denver, CO', 'Crested Butte, CO')

    expect(roadtrip).to be_a(RoadTrip)
  end
end
