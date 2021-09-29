class RoadTripFacade
  def self.create_roadtrip(from, to)
    travel_time = MapQuestService.get_travel_time(from, to)
    destination = LocationFacade.create_location(to)

    destination_weather = WeatherService.get_location_weather(destination.latitude, destination.longitude)
    travel_hours = travel_time[:route][:formattedTime].split(/:/)[0].to_i

    arrival_temp = destination_weather[:hourly][travel_hours - 1]

    roadtrip = {
      start_city: from,
      end_city: to,
      travel_time: travel_time[:route][:formattedTime],
      weather_at_eta: arrival_temp
    }

    RoadTrip.new(roadtrip)
  end
end
