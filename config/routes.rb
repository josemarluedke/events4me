Events4me::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :authorizations, only: [:destroy]

  resources :events
  match :me, controller: "users", action: "show", as: :me

  root :to => 'home#index'
end
