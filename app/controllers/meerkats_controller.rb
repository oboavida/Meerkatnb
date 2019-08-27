class MeerkatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :fetch_user, only: [:new, :create]

  def index
    @meerkats = Meerkat.all
    @user = current_user if user_signed_in?
  end

  # def show
  #   @meerkat = Meerkat.find(params[:id])
  # end

  def new
    @meerkat = Meerkat.new
  end

  def create
    @meerkat = Meerkat.new(meerkat_params)
    @meerkat.user = @user
    if @meerkat.save
      redirect_to root_path
    else
      render :new
    end
  end

#   def edit
#     @meerkat = Meerkat.find(params[:id])
#   end

#   def update
#     @meerkat = Meerkat.find(params[:id])
#     @meerkat.update(meerkat_params)
#     @meerkat.save
#   end

#   def destroy
#     @meerkat = Meerkat.find(params[:id])
#     @meerkat.destroy
#   end

  private

  def fetch_user
    @user = User.find(params[:user_id])
  end

  def meerkat_params
    params.require(:meerkat).permit(:name, :specialty, :age, :price, :description, :photo, :location, :user_id)
  end
end
