class Forecast
  attr_reader :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(weather_data)
    @current_weather = format_current(weather_data[:current])
    @daily_weather = format_daily(weather_data[:daily][0..4])
    @hourly_weather = format_hourly(weather_data[:hourly][0..7])
  end

  def format_current(current_weather)
    current = {  datetime: current_weather[:dt],
                 sunrise: current_weather[:sunrise],
                 sunset: current_weather[:sunset],
                 temperature: current_weather[:temp],
                 feels_like: current_weather[:feels_like],
                 humidity: current_weather[:humidity],
                 uvi: current_weather[:uvi],
                 visibility: current_weather[:visibility],
                 conditions: current_weather[:weather][0][:description],
                 icon: current_weather[:weather][0][:icon]
              }
  end

  def format_daily(daily_weather)
    daily_weather.map do |day|
      {  datetime: day[:dt],
         sunrise: day[:sunrise],
         sunset: day[:sunset],
         max_temp: day[:temp][:max],
         min_temp: day[:temp][:min],
         conditions: day[:weather][0][:description],
         icon: day[:weather][0][:icon]
      }
    end
  end

  def format_hourly(hourly_weather)
    hourly_weather.map do |hour|
      { time: hour[:dt],
        temperature: hour[:temp],
        conditions: hour[:weather][0][:description],
        icon: hour[:weather][0][:icon]
      }
    end
  end
end
