Events4me::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :authorizations, only: [:destroy]

  resources :events
  resource :me, controller: "users", action: "show", as: :me do
    resources :devices, only: [:index, :create, :destroy]
  end

  root :to => 'home#index'
end
