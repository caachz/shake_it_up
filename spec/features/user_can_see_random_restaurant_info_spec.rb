require 'rails_helper'

RSpec.describe 'As a user when I visit dashboard' do
  describe 'I can click shake it up link with params of price and distance' do
    it 'shows me a random restaurant with info' do
    user = User.new(provider: "google_oauth2", uid: "12345678910", first_name: 'Happy', last_name: 'Gilmore', email: 'subway@gmail.com')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    click_link 'Shake It Up'

    end
  end
end
