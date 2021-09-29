class BreweryFacade
  def self.create_breweries(lat_lng, quantity)
    json = OpenBreweryService.get_location_breweries(lat_lng, quantity)

    json.map do |brewery|
      Brewery.new(brewery)
    end
  end
end
