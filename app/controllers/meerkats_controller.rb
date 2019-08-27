class MeerkatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :fetch_user, only: [:new, :create]
  before_action :fetch_meerkat, only: [:edit, :update]

  def index
    @meerkats = policy_scope(Meerkat)
    @user = current_user if user_signed_in?
  end

  def show
    @meerkat = Meerkat.find(params[:id])
    authorize @meerkat
    @owner = @meerkat.user
  end

  def new
    @meerkat = Meerkat.new
    authorize @meerkat
  end

  def create
    @meerkat = Meerkat.new(meerkat_params)
    authorize @meerkat
    @meerkat.user = @user
    if @meerkat.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    authorize @meerkat
  end

  def update
    @meerkat.update(meerkat_params)
    if @meerkat.save
      redirect_to root_path
    else
      render :edit
    end
  end

#   def destroy
#     @meerkat = Meerkat.find(params[:id])
#     @meerkat.destroy
#   end

  private

  def fetch_user
    @user = User.find(params[:user_id])
  end

  def fetch_meerkat
    @meerkat = Meerkat.find(params[:id])
  end

  def meerkat_params
    params.require(:meerkat).permit(:name, :specialty, :age, :price, :description, :photo, :location, :user_id)
  end
end
