class RestaurantController < ApplicationController

  def show

    if params["location"] == "current location"
      current_user.lat = params["lat"].to_f
      current_user.lng = params["lng"].to_f
      current_user.save!
    end
    service = RevItUpService.new(current_user.lat, current_user.lng, meters_to_miles, params["price"])
    @restaurant = RevItUpFacade.new(service.restaurant)
    if service.restaurant == "error"
      flash[:notice] = "No restaurants meet this criteria, please try again!"
      redirect_to dashboard_path
    else
      @restaurant = RevItUpFacade.new(service.restaurant)
    end
  end

  def meters_to_miles
    (params["distance"].to_f * 1609)
  end
end
