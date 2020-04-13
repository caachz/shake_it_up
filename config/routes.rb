Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  get '/', to: 'welcome#index'
  get '/dashboard', to: 'dashboard#index'
=======
get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'auth/:provider/callback', to: 'sessions#create'
get 'auth/failure', to: redirect('/')
get 'home', to: 'home#show'
get '/dashboard', to: 'dashboard#show', as: 'dashboard'
#change me to dashboard at some point and can be the page the user uses to shake it up
root to: "home#show"
>>>>>>> 21e2508b7b592866548b3b34c21fd67b6afc5adc
end
