class ForecastWeather

  def initialize(weather_data)
    @current_weather = weather_data[:current]
    @daily_weather = weather_data[:daily]
    @hourly_weather = weather_data[:hourly]
  end
end
