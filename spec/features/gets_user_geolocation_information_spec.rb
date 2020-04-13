require 'rails_helper'

RSpec.describe 'As a user' do
  it "it gets users location from google geolocation api" do
<<<<<<< HEAD
    # visit '/dashboard'
    # GoogleGeolocationService.new
    # current_user = User.new(uid: "32rfeswr32r", token: "fewt3e2tr32qdew")
    # visit '/dashboard'
    #
    # expect(current_user.lattitude).to_not be_nil
    # expect(current_user.longitude).to_not be_nil
=======
    user = User.new(uid: "32rfeswr32r", provider: "google", email: "something@something.com", first_name: "Carla", last_name: "Stanford")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'
>>>>>>> 952cbfd6aa277caf80cf636afcde888b806d7ab2
  end
end
