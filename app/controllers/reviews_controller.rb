class ReviewsController < ApplicationController
  before_action :fetch_reservation, only: [:new, :create]

  def index
    @reviews = policy_scope(Review)
    @user = current_user if user_signed_in?
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.reservation = @reservation
    @review.user = current_user
    authorize @review

    @review.save
    redirect_to meerkat_path(@meerkat)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def fetch_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end
end
