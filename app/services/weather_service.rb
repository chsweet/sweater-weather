class WeatherService < BaseService
  def self.get_weather(latitude, longitude)
    response = conn('https://api.openweathermap.org/data/2.5/onecall').get do |req|
      req.params['appid'] = ENV['open_weather_key']
      req.params['lat'] = latitude
      req.params['lon'] = longitude
      req.params['exclude'] = 'minutely,alerts'
      req.params['units'] = 'imperial'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
