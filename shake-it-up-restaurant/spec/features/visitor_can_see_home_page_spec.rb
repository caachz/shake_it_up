require 'rails_helper'

RSpec.describe 'As a visitor' do
  it "can visit the homepage as a visitor" do
    visit '/'
    expect(page).to have_button('Login with Google')
  end
end
