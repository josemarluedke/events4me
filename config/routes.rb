Events4me::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :authorizations, only: [:destroy]
  root :to => 'home#index'
end
