class RestaurantController < ApplicationController

  def show
    service = RevItUpService.new(current_user.lat, current_user.lng, meters_to_miles, params["price"])
    @restaurant = RevItUpFacade.new(service.restaurant)
  end

  def meters_to_miles
    (params["distance"].to_f * 1609)
  end
end
