class DashboardController < ApplicationController
  before_action :authenticate
  def show
    geolocation = GoogleGeolocationService.new
    current_user.lat = geolocation.coordinates[:location][:lat]
    current_user.lat = geolocation.coordinates[:location][:lng]
  end
end
