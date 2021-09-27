require 'rails_helper'

RSpec.describe BackgroundFacade do
  it 'can create forecast for location', :vcr do
    background = BackgroundFacade.create_background('Denver, CO')

    expect(background).to be_a(Background)
  end
end
