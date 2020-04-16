require 'rails_helper'

RSpec.describe 'As a user when I visit dashboard' do
  describe 'I can set city location' do
    it 'shows me a random restaurant with info' do
      current_user = User.create!(uid: 1, provider: "google", email: "something@something.com", first_name: "MAC", last_name: "HAG")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

      city = Geocoder.search("Boulder")
      citylat = city.first.coordinates[0]
      citylng = city.first.coordinates[-1]

      visit '/dashboard'

      fill_in :city, with: "Boulder"

      click_button 'Set City'
      
      expect(current_user.lat).to eq(citylat)
      expect(current_user.lng).to eq(citylng)
    end
  end
end
