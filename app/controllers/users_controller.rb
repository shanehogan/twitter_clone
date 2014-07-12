class UsersController < ApplicationController
  def create
    render json: [{email: params[:email]}]
  end
end
