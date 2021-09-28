class BreweryFacade
  def self.create_breweries(lat_lng, quantity)
    json = OpenBreweryService.get_location_breweries(lat_lng, quantity)
    brewery = Brewery.new(json)
  end
end
