class RestaurantController < ApplicationController

  def show
    if params["location"] == "current location"
      current_user.lat = params["lat"].to_f
      current_user.lng = params["lng"].to_f
      current_user.save!
    else
      # require "pry"; binding.pry
      # @user = User.find(current_user.id)
      city = Geocoder.search(params["city"]).first
      current_user.lat = city.coordinates[0]
      current_user.lng = city.coordinates[-1]
      current_user.save!
      # redirect_to "/dashboard"
    end

    service = RevItUpService.new(current_user.lat, current_user.lng, meters_to_miles, params["price"])
    @restaurant = RevItUpFacade.new(service.restaurant)
    if service.restaurant == "error"
      flash[:notice] = "No restaurants meet this criteria. Please try again!"
      redirect_to dashboard_path
    else
      @restaurant = RevItUpFacade.new(service.restaurant)
    end
  end

  def meters_to_miles
    (params["distance"].to_f * 1609)
  end
end
