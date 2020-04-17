class DashboardController < ApplicationController
  before_action :authenticate
  def show
    # geolocation = GoogleGeolocationService.new
    # current_user.lat = geolocation.coordinates[:location][:lat]
    # current_user.lng = geolocation.coordinates[:location][:lng]
    # current_user.save!
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    # @user = User.find(current_user.id)
    # city = Geocoder.search(params["city"]).first
    # current_user.lat = city.coordinates[0]
    # current_user.lng = city.coordinates[-1]
    # current_user.save!
    # redirect_to "/dashboard"
  end
end
