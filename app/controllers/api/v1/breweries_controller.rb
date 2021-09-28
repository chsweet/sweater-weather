class Api::V1::BreweriesController < ApplicationController
  def index
    if params[:quantity].to_i < 1
      render status: :bad_request
    else
      location = LocationFacade.create_location(params[:location])

      forecast = ForecastFacade.create_forecast(location.latitude, location.longitude)

      breweries = BreweryFacade.create_breweries("#{location.latitude}, #{location.longitude}", params[:quantity])

      render(json: BreweriesSerializer.location_forecast_breweries(params[:location], forecast, breweries))
    end
  end
end
