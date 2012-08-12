Events4me::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :authorizations, only: [:destroy]

  match :me, controller: "users", action: "show"

  root :to => 'home#index'
end
