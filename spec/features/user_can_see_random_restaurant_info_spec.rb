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

      visit '/dashboard'
      select "1 Mile", from: :distance
      select "$$$", from: :price
      click_button 'Shake It Up!'

      within '#restaurant' do
        expect(first('#name').text).to_not be_empty
        expect(first('#avg_rating').text).to_not be_empty
        expect(first('#price').text).to_not be_empty
        expect(first('#category').text).to_not be_empty
      end
    end
  end
end
