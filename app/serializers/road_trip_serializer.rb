class RoadTrip
  attr_reader :start_city,
              :end_city,
              :travel_time

  def initialize(start_city, end_city, travel_time)
    @start_city   = start_city
    @end_city     = end_city
    @travel_time  = travel_time
  end
end
