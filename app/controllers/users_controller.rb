class UsersController < ApplicationController
  def index
    @search = ransack_params
    @users = @search.result
  end
  private
  def ransack_params
    User.ransack(params[:q])
  end
end
