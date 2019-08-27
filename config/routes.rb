Rails.application.routes.draw do
  devise_for :users
  root to: 'meerkats#index'

  resources :users, except: [:index] do
    resources :meerkats do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :meerkats, only: [:index]
end
