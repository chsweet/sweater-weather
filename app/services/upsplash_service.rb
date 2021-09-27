class UpsplashService < BaseService
  def self.get_photo(location)
    response = conn('https://api.unsplash.com/search/photos/').get do |req|
      req.params['client_id'] = ENV['unsplash_key']
      req.params['query'] = location
      req.params['page'] = 1
      req.params['per_page'] = 1
      req.params['content_filter'] = 'high'
      req.params['orientation'] = 'landscape'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
