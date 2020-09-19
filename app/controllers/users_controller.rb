class UsersController < ApplicationController
  def list
    @users = User.all
  end

  def form
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
