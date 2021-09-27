class BackgroundFacade
  def self.create_background(location)
    json = UpsplashService.get_imgage(location)
    image = Background.new(json[:results][0])
  end
end
