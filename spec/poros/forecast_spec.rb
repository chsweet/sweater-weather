require 'rails_helper'

RSpec.describe Forecast do
  it 'exists and has attributes' do
    attributes = {
              "lat": 39.7385,
              "lon": -104.9849,
              "timezone": "America/Denver",
              "timezone_offset": -21600,
              "current": {
                  "dt": 1632521761,
                  "sunrise": 1632487781,
                  "sunset": 1632531239,
                  "temp": 73.17,
                  "feels_like": 71.55,
                  "pressure": 1017,
                  "humidity": 29,
                  "dew_point": 39.06,
                  "uvi": 2.66,
                  "clouds": 5,
                  "visibility": 10000,
                  "wind_speed": 1.01,
                  "wind_deg": 68,
                  "wind_gust": 5.01,
                  "weather": [
                      {
                          "id": 800,
                          "main": "Clear",
                          "description": "clear sky",
                          "icon": "01d"
                      }
                  ]
              },
              "hourly": [
                  {
                      "dt": 1632520800,
                      "temp": 73.17,
                      "feels_like": 71.55,
                      "pressure": 1017,
                      "humidity": 29,
                      "dew_point": 39.06,
                      "uvi": 2.66,
                      "clouds": 5,
                      "visibility": 10000,
                      "wind_speed": 4.76,
                      "wind_deg": 55,
                      "wind_gust": 3.69,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01d"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632524400,
                      "temp": 73.72,
                      "feels_like": 72.01,
                      "pressure": 1016,
                      "humidity": 26,
                      "dew_point": 36.75,
                      "uvi": 1.17,
                      "clouds": 5,
                      "visibility": 10000,
                      "wind_speed": 7.2,
                      "wind_deg": 44,
                      "wind_gust": 4.99,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01d"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632528000,
                      "temp": 73.63,
                      "feels_like": 71.87,
                      "pressure": 1016,
                      "humidity": 25,
                      "dew_point": 35.69,
                      "uvi": 0.28,
                      "clouds": 8,
                      "visibility": 10000,
                      "wind_speed": 10.22,
                      "wind_deg": 50,
                      "wind_gust": 7.99,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01d"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632531600,
                      "temp": 71.96,
                      "feels_like": 70.03,
                      "pressure": 1016,
                      "humidity": 25,
                      "dew_point": 34.27,
                      "uvi": 0,
                      "clouds": 7,
                      "visibility": 10000,
                      "wind_speed": 9.57,
                      "wind_deg": 64,
                      "wind_gust": 11.05,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01n"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632535200,
                      "temp": 69.73,
                      "feels_like": 67.62,
                      "pressure": 1016,
                      "humidity": 26,
                      "dew_point": 33.35,
                      "uvi": 0,
                      "clouds": 16,
                      "visibility": 10000,
                      "wind_speed": 6.98,
                      "wind_deg": 77,
                      "wind_gust": 11.39,
                      "weather": [
                          {
                              "id": 801,
                              "main": "Clouds",
                              "description": "few clouds",
                              "icon": "02n"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632538800,
                      "temp": 67.5,
                      "feels_like": 65.26,
                      "pressure": 1017,
                      "humidity": 28,
                      "dew_point": 32.59,
                      "uvi": 0,
                      "clouds": 17,
                      "visibility": 10000,
                      "wind_speed": 4.7,
                      "wind_deg": 97,
                      "wind_gust": 8.72,
                      "weather": [
                          {
                              "id": 801,
                              "main": "Clouds",
                              "description": "few clouds",
                              "icon": "02n"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632542400,
                      "temp": 66.31,
                      "feels_like": 64,
                      "pressure": 1018,
                      "humidity": 29,
                      "dew_point": 32.54,
                      "uvi": 0,
                      "clouds": 15,
                      "visibility": 10000,
                      "wind_speed": 2.42,
                      "wind_deg": 106,
                      "wind_gust": 5.75,
                      "weather": [
                          {
                              "id": 801,
                              "main": "Clouds",
                              "description": "few clouds",
                              "icon": "02n"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632546000,
                      "temp": 65.5,
                      "feels_like": 63.16,
                      "pressure": 1018,
                      "humidity": 30,
                      "dew_point": 32.49,
                      "uvi": 0,
                      "clouds": 13,
                      "visibility": 10000,
                      "wind_speed": 2.17,
                      "wind_deg": 8,
                      "wind_gust": 4.29,
                      "weather": [
                          {
                              "id": 801,
                              "main": "Clouds",
                              "description": "few clouds",
                              "icon": "02n"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632549600,
                      "temp": 64.47,
                      "feels_like": 62.08,
                      "pressure": 1017,
                      "humidity": 31,
                      "dew_point": 32.58,
                      "uvi": 0,
                      "clouds": 11,
                      "visibility": 10000,
                      "wind_speed": 1.68,
                      "wind_deg": 323,
                      "wind_gust": 5.73,
                      "weather": [
                          {
                              "id": 801,
                              "main": "Clouds",
                              "description": "few clouds",
                              "icon": "02n"
                          }
                      ],
                      "pop": 0
                  },
                  {
                      "dt": 1632553200,
                      "temp": 63.59,
                      "feels_like": 61.11,
                      "pressure": 1017,
                      "humidity": 31,
                      "dew_point": 32.25,
                      "uvi": 0,
                      "clouds": 0,
                      "visibility": 10000,
                      "wind_speed": 1.79,
                      "wind_deg": 281,
                      "wind_gust": 5.17,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01n"
                          }
                      ],
                      "pop": 0
                  }
              ],
              "daily": [
                  {
                      "dt": 1632506400,
                      "sunrise": 1632487781,
                      "sunset": 1632531239,
                      "moonrise": 1632538560,
                      "moonset": 1632500520,
                      "moon_phase": 0.62,
                      "temp": {
                          "day": 69.28,
                          "min": 60.39,
                          "max": 73.72,
                          "night": 65.5,
                          "eve": 73.63,
                          "morn": 61.56
                      },
                      "feels_like": {
                          "day": 66.99,
                          "night": 63.16,
                          "eve": 71.87,
                          "morn": 58.82
                      },
                      "pressure": 1018,
                      "humidity": 23,
                      "dew_point": 30.18,
                      "wind_speed": 10.22,
                      "wind_deg": 50,
                      "wind_gust": 11.39,
                      "weather": [
                          {
                              "id": 801,
                              "main": "Clouds",
                              "description": "few clouds",
                              "icon": "02d"
                          }
                      ],
                      "clouds": 18,
                      "pop": 0,
                      "uvi": 6.32
                  },
                  {
                      "dt": 1632592800,
                      "sunrise": 1632574237,
                      "sunset": 1632617539,
                      "moonrise": 1632626760,
                      "moonset": 1632590580,
                      "moon_phase": 0.65,
                      "temp": {
                          "day": 79.92,
                          "min": 59.45,
                          "max": 86.97,
                          "night": 71.76,
                          "eve": 84.43,
                          "morn": 60.08
                      },
                      "feels_like": {
                          "day": 79.92,
                          "night": 69.35,
                          "eve": 81.45,
                          "morn": 57.34
                      },
                      "pressure": 1011,
                      "humidity": 14,
                      "dew_point": 25.84,
                      "wind_speed": 11.83,
                      "wind_deg": 171,
                      "wind_gust": 19.6,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01d"
                          }
                      ],
                      "clouds": 4,
                      "pop": 0,
                      "uvi": 6.33
                  },
                  {
                      "dt": 1632679200,
                      "sunrise": 1632660694,
                      "sunset": 1632703840,
                      "moonrise": 1632715200,
                      "moonset": 1632680580,
                      "moon_phase": 0.68,
                      "temp": {
                          "day": 85.48,
                          "min": 64.04,
                          "max": 88.43,
                          "night": 74.77,
                          "eve": 86.11,
                          "morn": 64.87
                      },
                      "feels_like": {
                          "day": 82.26,
                          "night": 72.64,
                          "eve": 82.78,
                          "morn": 61.99
                      },
                      "pressure": 1008,
                      "humidity": 10,
                      "dew_point": 21.67,
                      "wind_speed": 9.42,
                      "wind_deg": 99,
                      "wind_gust": 16.73,
                      "weather": [
                          {
                              "id": 800,
                              "main": "Clear",
                              "description": "clear sky",
                              "icon": "01d"
                          }
                      ],
                      "clouds": 0,
                      "pop": 0,
                      "uvi": 6.19
                  },
                  {
                      "dt": 1632765600,
                      "sunrise": 1632747150,
                      "sunset": 1632790142,
                      "moonrise": 1632804000,
                      "moonset": 1632770520,
                      "moon_phase": 0.71,
                      "temp": {
                          "day": 83.89,
                          "min": 66.99,
                          "max": 87.12,
                          "night": 77.41,
                          "eve": 85.32,
                          "morn": 66.99
                      },
                      "feels_like": {
                          "day": 81.03,
                          "night": 75.61,
                          "eve": 82.13,
                          "morn": 64.33
                      },
                      "pressure": 1009,
                      "humidity": 10,
                      "dew_point": 22.39,
                      "wind_speed": 8.95,
                      "wind_deg": 100,
                      "wind_gust": 8.32,
                      "weather": [
                          {
                              "id": 802,
                              "main": "Clouds",
                              "description": "scattered clouds",
                              "icon": "03d"
                          }
                      ],
                      "clouds": 46,
                      "pop": 0,
                      "uvi": 6.15
                  },
                  {
                      "dt": 1632852000,
                      "sunrise": 1632833607,
                      "sunset": 1632876443,
                      "moonrise": 1632893220,
                      "moonset": 1632860280,
                      "moon_phase": 0.75,
                      "temp": {
                          "day": 80.01,
                          "min": 67.51,
                          "max": 80.65,
                          "night": 69.57,
                          "eve": 77.05,
                          "morn": 67.51
                      },
                      "feels_like": {
                          "day": 78.53,
                          "night": 67.96,
                          "eve": 75.63,
                          "morn": 65.14
                      },
                      "pressure": 1004,
                      "humidity": 19,
                      "dew_point": 33.6,
                      "wind_speed": 15.57,
                      "wind_deg": 134,
                      "wind_gust": 12.77,
                      "weather": [
                          {
                              "id": 500,
                              "main": "Rain",
                              "description": "light rain",
                              "icon": "10d"
                          }
                      ],
                      "clouds": 99,
                      "pop": 0.4,
                      "rain": 0.18,
                      "uvi": 5.19
                  },
                  {
                      "dt": 1632938400,
                      "sunrise": 1632920064,
                      "sunset": 1632962745,
                      "moonrise": 0,
                      "moonset": 1632949800,
                      "moon_phase": 0.77,
                      "temp": {
                          "day": 76.96,
                          "min": 59.52,
                          "max": 81.23,
                          "night": 59.52,
                          "eve": 69.53,
                          "morn": 63.55
                      },
                      "feels_like": {
                          "day": 75.4,
                          "night": 58.8,
                          "eve": 68.02,
                          "morn": 61.39
                      },
                      "pressure": 1005,
                      "humidity": 22,
                      "dew_point": 35.65,
                      "wind_speed": 15.01,
                      "wind_deg": 333,
                      "wind_gust": 18.66,
                      "weather": [
                          {
                              "id": 501,
                              "main": "Rain",
                              "description": "moderate rain",
                              "icon": "10d"
                          }
                      ],
                      "clouds": 73,
                      "pop": 0.96,
                      "rain": 9.22,
                      "uvi": 6
                  },
                  {
                      "dt": 1633024800,
                      "sunrise": 1633006521,
                      "sunset": 1633049047,
                      "moonrise": 1632982860,
                      "moonset": 1633038900,
                      "moon_phase": 0.8,
                      "temp": {
                          "day": 66.67,
                          "min": 56.73,
                          "max": 69.08,
                          "night": 57.76,
                          "eve": 65.25,
                          "morn": 56.73
                      },
                      "feels_like": {
                          "day": 65.25,
                          "night": 56.43,
                          "eve": 63.91,
                          "morn": 55.63
                      },
                      "pressure": 1017,
                      "humidity": 47,
                      "dew_point": 45.61,
                      "wind_speed": 8.1,
                      "wind_deg": 344,
                      "wind_gust": 11.56,
                      "weather": [
                          {
                              "id": 500,
                              "main": "Rain",
                              "description": "light rain",
                              "icon": "10d"
                          }
                      ],
                      "clouds": 80,
                      "pop": 0.92,
                      "rain": 3.78,
                      "uvi": 6
                  }
              ]
          }
    forecast = Forecast.new(attributes)

    expect(forecast).to be_a(Forecast)

    expect(forecast.current_weather).to be_a(Hash)
    expect(forecast.current_weather).to have_key(:datetime)
    expect(forecast.current_weather).to have_key(:sunrise)
    expect(forecast.current_weather).to have_key(:sunset)
    expect(forecast.current_weather).to have_key(:temperature)
    expect(forecast.current_weather).to have_key(:feels_like)
    expect(forecast.current_weather).to have_key(:humidity)
    expect(forecast.current_weather).to have_key(:uvi)
    expect(forecast.current_weather).to have_key(:visibility)
    expect(forecast.current_weather).to have_key(:conditions)
    expect(forecast.current_weather).to have_key(:icon)

    expect(forecast.daily_weather).to be_a(Array)
    expect(forecast.daily_weather[0]).to have_key(:datetime)
    expect(forecast.daily_weather[0]).to have_key(:sunrise)
    expect(forecast.daily_weather[0]).to have_key(:sunset)
    expect(forecast.daily_weather[0]).to have_key(:max_temp)
    expect(forecast.daily_weather[0]).to have_key(:min_temp)
    expect(forecast.daily_weather[0]).to have_key(:conditions)
    expect(forecast.daily_weather[0]).to have_key(:icon)

    expect(forecast.hourly_weather).to be_a(Array)
    expect(forecast.hourly_weather[0]).to have_key(:time)
    expect(forecast.hourly_weather[0]).to have_key(:temperature)
    expect(forecast.hourly_weather[0]).to have_key(:conditions)
    expect(forecast.hourly_weather[0]).to have_key(:icon)
  end
end
