class ForecastController < ApplicationController
  def show
    location = LocationFacade.create_location(params[:location])
    forecast = ForecastFacade.create_forecast(location.latitude, location.longitude)
  end
end
