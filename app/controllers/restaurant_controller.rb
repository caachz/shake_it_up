class RestaurantController < ApplicationController

  def show
    rev_it_up_service = RevItUpService.new(current_user.lat, current_user.lng, params[:distance], params[:price])
    restaurant = rev_it_up_service.restaurant
    binding.pry
  end

end
