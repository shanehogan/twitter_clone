class UsersController < ApplicationController
  def create
    user = User.new({email: params[:email]})
    render json: user
  end
end
