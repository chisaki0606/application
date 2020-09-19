class UsersController < ApplicationController
  def list
    @users = User.all
  end

  def form
  end
end
