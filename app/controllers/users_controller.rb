class UsersController < ApplicationController
  def list
    @users = User.all.order(created_at: :desc)
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

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.save
    redirect_to("/")
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/")
  end
end
