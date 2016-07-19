require "spec_helper"

RSpec.feature "Session management" do
  scenario "user can log out" do
    user = create(:user)
    sign_in user

    visit root_path
    click_on user.email
    click_on I18n.t("navigation.log_out")

    expect(current_path).to eq new_user_session_path
  end
end
