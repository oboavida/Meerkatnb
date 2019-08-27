Rails.application.routes.draw do
  devise_for :users
  root to: 'meerkats#index'

  resources :meerkats do
    resources :reviews, only: [:new, :create]
      resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:index]
end
