class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    user_id = params[:id]
    @current_user = User.find(user_id)

    @other_users = User.where.not(id: user_id)
  end

  def new
  end

  def create
    new_user = User.create!(user_name: params[:user_name])

    redirect_to new_user
  end
end
