class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    user_id = params[:id]
    @current_user = User.find(user_id)

    @other_users = User.where.not(id: user_id)
  end
end
