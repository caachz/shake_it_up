require 'rails_helper'

RSpec.describe 'As a logged in user' do
  before :each do
    visit root_path
    stub_omniauth
    click_button 'Sign in with Google'

    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content('Happy')
  end

  it "shows options for users via dropdown menus before they shake it up" do
    expect(page).to have_content('Welcome, Happy')
    expect(page).to have_content('Logout')
    select "1 Mile", from: :distance
    select "$$$", from: :price
    click_button 'Shake It Up!'
  end
end
