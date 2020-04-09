class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    require "pry"; binding.pry
    @user = User.from_omniauth(request.env["omniauth.auth"])
    
    redirect_to '/'
  end

  def create

  end
end
