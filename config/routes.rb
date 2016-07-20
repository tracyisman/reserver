Rails.application.routes.draw do
  root to: "restaurants#index"

  devise_for :users

  resources :restaurants, only: [:index]
  resources :reservations, only: [:create]

  namespace :admin do
    resources :restaurants

    root to: "restaurants#index"
  end
end
