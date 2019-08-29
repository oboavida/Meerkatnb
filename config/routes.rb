Rails.application.routes.draw do
  devise_for :users
  root to: 'meerkats#index'

  resources :meerkats do
    collection :list_own
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:index] do
      resources :reviews, only: [:new, :create]
  end

end
