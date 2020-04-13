Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/', to: 'welcome#index'
  # get '/dashboard', to: 'dashboard#index'
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'home#show'
  get '/search', to: 'search#show', as: 'search'
  get '/dashboard', to: 'dashboard#show', as: 'dashboard'
  root to: "home#show"
end
