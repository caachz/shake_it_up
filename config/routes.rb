Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'auth/:provider/callback', to: 'sessions#create'
get 'auth/failure', to: redirect('/')
get 'home', to: 'home#show'
get 'me', to: 'me#show', as: 'me'
#change me to dashboard at some point and can be the page the user uses to shake it up
root to: "home#show"
end
