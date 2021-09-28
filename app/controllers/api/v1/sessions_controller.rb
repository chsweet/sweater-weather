class Api::V1::SessionsController < ApplicationController
  skip_before_action :require_authentication
  def create
    user = User.find_by(email: params[:email].downcase)
  end
end
