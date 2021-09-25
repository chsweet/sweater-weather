class ForecastFacade
  def self.create_forecast(latitude, longitude)
    json = WeatherService.get_location_weather(latitude, longitude)
    require "pry";binding.pry
    forecast = ForecastWeather.new(json)
  end
end
