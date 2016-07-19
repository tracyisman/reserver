require "spec_helper"

RSpec.feature "User can see a restaurant" do
  scenario "from the restaurant list" do
    sign_in create(:user)
    restaurant = create(:restaurant)

    visit restaurants_path

    expect(page).to have_text restaurant.name
  end
end
