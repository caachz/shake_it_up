require 'rails_helper'

RSpec.describe 'As a user when I visit dashboard' do
  describe 'I can click shake it up link with params of price and distance' do
    before :each do
      visit root_path
      stub_omniauth
      click_button 'Sign in with Google'

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content('Happy')
    end

    it 'shows me a random restaurant with info' do
      user = User.create!(uid: "32rfeswr32r",
                      provider: "google",
                      email: "something@something.com",
                      first_name: "Carla",
                      last_name: "Stanford",
                      lat: 39.7392,
                      lng: -104.9903)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/dashboard'
      select "1 Mile", from: :distance
      select "$$$", from: :price
      page.choose('enter_location')
      fill_in :city, with: 'Boulder'
      click_button 'Shake It Up!'

      within '#restaurant' do
        expect(first('#name').text).to_not be_empty
        expect(first('#avg_rating').text).to_not be_empty
        expect(first('#price').text).to_not be_empty
        expect(first('#category').text).to_not be_empty
      end
    end

    it "shows a flash message when a restaurant could not be found" do
      user = User.create!(uid: "32rfeswr32r",
                      provider: "google",
                      email: "something@something.com",
                      first_name: "Carla",
                      last_name: "Stanford",
                      lat: 43.646622,
                      lng: -107.750613)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      select '1 Mile', from: :distance
      select '$$$$', from: :price
      page.choose('enter_location')
      fill_in :city, with: 'Cheyenne'

      click_on 'Shake It Up!'

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content('No restaurants meet this criteria. Please try again!')
    end
  end
end
