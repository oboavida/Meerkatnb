class ReviewsController < ApplicationController
  before_action :fetch_reservation, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.reservation = @reservation
    @review.user = current_user

    @review.save
    redirect_to meerkat_path(@meerkat)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def fetch_reservation
    @meerkat = Meerkat.find(params[:meerkat_id])
  end
end
