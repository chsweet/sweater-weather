class Background
  attr_reader :id,
              :image

  def initialize(image_data)
    @id = nil
    @image = format_image(image_data)
  end

  def format_image(image_data)
    {
      location: image_data[:tags][0][:title],
      image_url: image_data[:urls][:regular],
      credit: {
        source: "unsplash.com",
        author: image_data[:user][:name],
        author_link: image_data[:user][:links][:self]
      }

    }
  end
end
