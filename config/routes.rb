Rails.application.routes.draw do
  root to: "restaurants#index"

  devise_for :users

  resources :restaurants, only: [:index] do
    resource :stars, only: [:create, :destroy]
  end
  resources :reservations, only: [:create]

  namespace :admin do
    resources :restaurants
    resources :stars
    resources :users

    root to: "restaurants#index"
  end
end
