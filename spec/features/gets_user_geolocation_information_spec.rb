require 'rails_helper'

RSpec.describe 'As a user' do
  it "it gets users location from google geolocation api" do
    user = User.new(uid: "32rfeswr32r", provider: "google", email: "something@something.com", first_name: "Carla", last_name: "Stanford")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'
  end
end
