class ForecastFacade
  def self.create_forecast(latitude, longitude)
    json = WeatherService.get_location_weather(latitude, longitude)
    forecast = Forecast.new(json)
  end
end
