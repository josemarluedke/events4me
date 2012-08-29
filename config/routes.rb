Events4me::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :events do
    resources :organization, controller: :organizations, only: [:index]
  end
  resource :me, controller: :users, action: :show, as: :me do
    resources :devices, only: [:index, :create, :destroy]
    resources :authorizations, only: [:index, :destroy]
  end
  put "me/settings" => "users#update", as: :me_settings

  root :to => 'home#index'
end
