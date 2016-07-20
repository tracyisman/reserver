class ReservationsMailer < ApplicationMailer
  def confirmation(receiver:, restaurant:)
    mail(
      to: receiver,
      subject: t("mailer.reservation_confirmation.subject", restaurant: restaurant.name)
    )
  end
end
