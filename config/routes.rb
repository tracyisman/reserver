Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants

    root to: "restaurants#index"
  end

  devise_for :users

  authenticate :user do
    root to: "restaurants#index"

    resources :restaurants, only: [:index]
  end
end
