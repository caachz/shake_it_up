require 'rails_helper'

RSpec.describe 'As a logged in user' do
  before :each do
    visit root_path
    stub_omniauth
    click_button 'Sign in with Google'

    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content('Happy')
  end

  it "user can log out from dashboard page" do
    click_link 'Logout'
    expect(current_path).to eq(root_path)
    expect(page).to have_button('Sign in with Google')
  end

  it "can log out from home page" do
    visit root_path
    click_link 'Logout'
    expect(current_path).to eq(root_path)
    expect(page).to have_button('Sign in with Google')
  end
end
