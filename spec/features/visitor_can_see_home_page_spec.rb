require 'rails_helper'

RSpec.describe 'As a visitor' do
  it "can visit the homepage as a visitor" do

    visit root_path
    stub_omniauth
    click_link 'Sign in with Google'

    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content('Happy')
    # expect(page).to have_content('Gilmore')
  end
end
