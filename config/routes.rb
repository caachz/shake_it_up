Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # devise_scope :user do
  #   get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
  #   get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  # end
end
