require 'rails_helper'

RSpec.describe UpsplashService do
  it 'can get lat and long for location given in params', :vcr do
    json = UpsplashService.get_photo('Denver, CO')
  
    expect(json).to have_key(:results)
    expect(json[:results][0]).to have_key(:description)
    expect(json[:results][0]).to have_key(:urls)
    expect(json[:results][0][:urls]).to have_key(:regular)
    expect(json[:results][0]).to have_key(:user)
    expect(json[:results][0][:user]).to have_key(:name)
    expect(json[:results][0][:user]).to have_key(:portfolio_url)
    expect(json[:results][0][:user][:links]).to have_key(:self)
  end
end
