Rails.application.routes.draw do
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'home#show'
  get '/restaurant', to: 'restaurant#show', as: 'restaurant'
  get '/dashboard', to: 'dashboard#show', as: 'dashboard'
  post '/dashboard', to: 'dashboard#create', as: 'geolocate'
  get '/dashboard', to: 'dashboard#edit'
  patch '/dashboard', to: 'dashboard#update'
  root to: "home#show"
end
