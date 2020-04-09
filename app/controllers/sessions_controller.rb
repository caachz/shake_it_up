class SessionsController < ApplicationController
  layout false

  def new
    
  end

  def create
    require "pry"; binding.pry
    # @auth = request.env['omniauth.auth']['credentials']
  end
end
