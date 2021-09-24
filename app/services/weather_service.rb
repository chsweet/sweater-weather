class WeatherService < BaseService
  def self.get_weather(lat, lon)
    response = conn('https://api.openweathermap.org/data/2.5/onecall').get do |req|
      req.params['appid'] = ENV['open_weather_key']
      req.params['lat'] = lat
      req.params['lon'] = lon
      req.params['exclude'] = 'minutely,alerts'
      req.params['units'] = 'imperial'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
