require 'rails_helper'

RSpec.describe MapQuestService do
  it 'can get lat and long for location given in params', :vcr do
    json = MapQuestService.get_lat_log('Denver, CO')

    expect(json).to have_key(:results)
    expect(json[:results][0]).to have_key(:locations)
    expect(json[:results][0][:locations][0]).to have_key(:latLng)
    expect(json[:results][0][:locations][0][:latLng]).to have_key(:lat)
    expect(json[:results][0][:locations][0][:latLng]).to have_key(:lng)
  end
end
