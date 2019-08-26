class MeerkatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @meerkats = Meerkat.all
  end

  # def show
  #   @meerkat = Meerkat.find(params[:id])
  # end

#   def new
#     @meerkat = Meerkat.new
#   end

#   def create
#     @meerkat = Meerkat.new(meerkat_params)
#   end

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

  # private

  # def meerkat_params
  #   params.require(:meerkat).permit(:name, :specialty, :age, :price, :description, :photo, :location)
  # end
end
