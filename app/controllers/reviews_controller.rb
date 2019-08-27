class ReviewsController < ApplicationController
  before_action :fetch_meerkats, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.meerkat = @meerkat

    if @review.save
      redirect_to meerkat_path(@meerkat)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def fetch_meerkat
    @meerkat = Meerkat.find(params[:meerkat_id])
  end
end
