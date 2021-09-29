class OpenBreweryService < BaseService
  def self.get_location_breweries(lat_lng, quantity)
    response = conn('https://api.openbrewerydb.org/breweries').get do |req|
      req.params['by_dist'] = lat_lng
      req.params['per_page'] = quantity
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
