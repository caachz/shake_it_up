require 'rails_helper'

RSPec.describe 'As a logged in user' do
  before :each do
    visit root_path
    stub_omniauth
    click_link 'Sign in with Google'

    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content('Happy')
    expect(page).to have_content('Gilmore')
  end

  it "shows options for users via dropdown menus before they shake it up" do
    expect(page).to have_content('Welcome, Happy Gilmore')
    expect(page).to have_content('Logout')
    select "1 Mile", from: :distance
    select "$$$", from: :price
    click_button 'Shake It Up!'
  end
end
# As a user
# When I visit "/dashboard"
# Then I should see a heading that says "Welcome #{username}"
# Then I should see "Search Distance" with a dropdown
# Then I should see "Price Range" with a dropdown
# And I should see an image of a shaker that functions as a button.
