class DashboardController < ApplicationController
  def show
    coordinates = GoogleGeolocationService.new
    current_user.lat = coordinates.coordinates[:location][:lat]
    current_user.lat = coordinates.coordinates[:location][:lng]
  end
end
