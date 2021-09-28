class Api::V1::RoadTripController < ApplicationController
  def create
    require "pry";binding.pry
    user = User.find_by(api_key: params[:api_key]
self.create_roadtrip(from, to)
    if user.nil?
      render(json: { message: "User does is unauthorized." }, status: :unauthorized)
    elsif asdfjsd
      ndns
    else
      dasfd
    end
  end
end
