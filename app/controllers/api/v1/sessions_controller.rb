class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email].downcase)

    if user.nil?
      render(json: { message: "User does not exist. Please register!" }, status: :bad_request)
    elsif user.authenticate(params[:password])
      render(json: UsersSerializer.new(user))
    else
      render(json: { message: "User email or password is invalid" }, status: :bad_request)
    end
  end
end
