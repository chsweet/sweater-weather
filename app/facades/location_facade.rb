class LocationFacade
  def self.create_location(location)
    json = MapQuestService.get_lat_log(location)
    Location.new(json[:results][0][:locations][0][:latLng])
  end
end
