require "spec_helper"

RSpec.feature "Reservations" do
  scenario "guest can make a reservation for a restaurant" do
    restaurant = create(:restaurant)
    guest_data = attributes_for(:user)

    visit restaurants_path
    click_on I18n.t("restaurants.reserve")

    fill_in :reservation_email, with: guest_data[:email]
    fill_in :reservation_party_size, with: 2
    fill_in :reservation_eta, with: 2.hours.from_now
    find("input[type=submit]").click

    expect(page).to have_text I18n.t("flash.reservations.success")
    expect(ActionMailer::Base.deliveries.flat_map(&:to)).to match(
      [restaurant.owner.email],
    )
  end
end
