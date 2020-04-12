require 'rails_helper'

RSpec.describe 'As a user' do
  it "it gets users location from google geolocation api" do
    GoogleGeolocationService.new
    current_user = User.new(uid: "32rfeswr32r", token: "fewt3e2tr32qdew")
    visit '/dashboard'

    expect(current_user.lattitude).to_not be_nil
    expect(current_user.longitude).to_not be_nil
  end
end
