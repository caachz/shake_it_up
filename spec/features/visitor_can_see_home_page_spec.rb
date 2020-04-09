require 'rails_helper'

RSpec.describe 'As a visitor' do
  it "can visit the homepage as a visitor" do
    visit '/'
    expect(page).to have_button('Login with Google')
  end
end

client id 203691594435-t659jgqg8lfmbjkt17sbrhk1kv24m4g2.apps.googleusercontent.com
client secret 8cDO92aXKPUhtggtA9Mp4zzd
