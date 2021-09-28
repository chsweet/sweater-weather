class BreweriesSerializer
  def self.location_forecast_breweries(location, forecast, breweries)
    {
      data: {
        id: nil,
        type: "breweries",
        attributes: {
          destination: "#{location}",
          forecast: {
            summary: "#{forecast.current_weather[:conditions]}",
            temperature: "#{forecast.current_weather[:temperature]}"
          },
          breweries:
            breweries.each do |brewery|
              {
                id: "#{brewery.id}",
                name: "#{brewery.name}",
                brewery_type: "#{brewery.brewery_type}"
              }
            end
        }
      }
    }
  end
end
