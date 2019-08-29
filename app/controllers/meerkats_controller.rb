class MeerkatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :fetch_meerkat, only: [:edit, :update, :destroy]

  def index
    if params[:query].present?
      @meerkats = policy_scope(Meerkat.search_by_name(params[:query]))
    else
      @meerkats = policy_scope(Meerkat)
    end
    @user = current_user if user_signed_in?
  end

  def show
    @meerkat = Meerkat.find(params[:id])
    authorize @meerkat
    @owner = @meerkat.user
    avg_review
  end

  def new
    @meerkat = Meerkat.new
    authorize @meerkat
  end

  def create
    @meerkat = Meerkat.new(meerkat_params)
    authorize @meerkat
    @meerkat.user = current_user
    if @meerkat.save
      redirect_to meerkat_path(@meerkat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @meerkat.update(meerkat_params)
    if @meerkat.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @meerkat.reservations.any?
      flash[:alert] = 'Sorry, the meerkat can\'t be destroyed because it has reservations.'
      render :show
    else
      flash[:notice] = 'The meerkat was destroyed.'
      @meerkat.destroy
      redirect_to root_path
    end
  end

  def list_own
    @user = current_user if user_signed_in?
    @meerkats = policy_scope(Meerkat).where(user: current_user)
    authorize @meerkats
  end

  private

  def avg_review
    avg = 0
    @meerkat.reviews.each do |review|
      avg += review.rating
    end
    if avg == 0
      @result = 0
    else
      @result = avg / @meerkat.reviews.count
    end
  end

  def fetch_user
    @user = current_user
  end

  def fetch_meerkat
    @meerkat = Meerkat.find(params[:id])
    authorize @meerkat
  end

  def meerkat_params
    params.require(:meerkat).permit(:name, :specialty, :age, :price, :description, :photo, :location, :user_id)
  end
end
