class RestaurantController < ApplicationController

  def show
    service = RevItUpService.new(current_user.lat, current_user.lng, meters_to_miles, params["price"])
    if service.restaurant == "error"
      flash[:notice] = "No Restaurants Meet This Criteria, Please Try Again"
      redirect_to "/dashboard"
    else
      @restaurant = RevItUpFacade.new(service.restaurant)
    end
  end

  def meters_to_miles
    (params["distance"].to_f * 1609)
  end
end
