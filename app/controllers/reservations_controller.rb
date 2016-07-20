class ReservationsController < ApplicationController
  def create
    reservation = Reservation.new(reservation_params)
    restaurant = reservation.restaurant

    if reservation.save
      flash[:sucess] = t("flash.reservations.success")
      ReservationsMailer.
        confirmation(receiver: restaurant.owner.email, restaurant: restaurant).
        deliver_later
    else
      flash[:error] = t("flash.reservations.error")
    end

    redirect_to restaurants_path
  end

  private

  def reservation_params
    params.
      require(:reservation).
      permit(:restaurant_id, :name, :email, :party_size, :eta)
  end
end
