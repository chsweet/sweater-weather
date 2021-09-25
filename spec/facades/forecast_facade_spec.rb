require 'rails_helper'

RSpec.describe ForecastFacade do
  it 'can create forecast for location', :vcr do
    forecast = ForecastFacade.create_forecast('39.738453', '-104.984853')

  end
end
