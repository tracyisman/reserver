require "spec_helper"

RSpec.feature "Owner can edit restaurant" do
  scenario "accesses the dashboard from the restaurant list" do
    owner = create(:user, :owner)
    restaurant = create(:restaurant, owner: owner)
    sign_in owner

    visit restaurants_path

    click_on I18n.t("navigation.dashboard")

    expect(current_path).to eq admin_root_path
    expect(page).to have_text restaurant.name
  end
end
