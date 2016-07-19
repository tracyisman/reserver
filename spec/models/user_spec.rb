require "spec_helper"

RSpec.describe User do
  it "knows if the user is an owner" do
    owner = build(:user, :owner)

    expect(owner).to be_owner
  end
end
