class UsersController < ApplicationController
  def list
    @users = User.all
  end

  def form
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new(name: params[:name])
    @user.save
    redirect_to("/")
  end
end
