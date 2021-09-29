class MapQuestService < BaseService
  def self.get_lat_log(location)
    response = conn('https://www.mapquestapi.com/geocoding/v1/address').get do |req|
      req.params['key'] = ENV['map_quest_key']
      req.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_travel_time(from, to)
    response = conn('http://www.mapquestapi.com/directions/v2/route').get do |req|
      req.params['key'] = ENV['map_quest_key']
      req.params['from'] = from
      req.params['to'] = to
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
