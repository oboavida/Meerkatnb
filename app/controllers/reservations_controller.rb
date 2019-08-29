class ReservationsController < ApplicationController
  before_action :fetch_user, only: [:new, :create]

  def index
    @reservations = policy_scope(Reservation)
    @user = current_user if user_signed_in?
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    authorize @reservation
    @meerkat = Meerkat.find(params[:meerkat_id])
    @reservation.user = current_user
    @reservation.meerkat = @meerkat

    @reservation.date_start = params["reservation"]["date_start"].split("to")[0]
    @reservation.date_end = params["reservation"]["date_start"].split("to")[1]

    @reservation.date_end = @reservation.date_start if @reservation.date_end.nil?

    if @reservation.save
      flash[:notice] = "You have just made a reservation."
      redirect_to reservations_path
    else
      flash[:alert] = @reservation.errors.full_messages
      render template: "meerkats/show"
    end
  end

  private

  def fetch_user
    @user = current_user
  end

  def reservation_params
    params.require(:reservation).permit(:date_start, :date_end, :user_id, :meerkat_id)
  end
end
