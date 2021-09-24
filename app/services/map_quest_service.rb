class MapQuestService < BaseService
  def self.get_lat_log(location)
    response = conn('https://www.mapquestapi.com/geocoding/v1/address').get do |req|
      req.params['key'] = ENV['map_quest_key']
      req.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
