require "spec_helper"

RSpec.feature "Guest can see a restaurant" do
  scenario "from the restaurant list" do
    restaurant = create(:restaurant)

    visit restaurants_path

    expect(page).to have_text restaurant.name
  end
end
