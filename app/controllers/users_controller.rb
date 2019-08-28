class UsersController < ApplicationController
  def show
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
