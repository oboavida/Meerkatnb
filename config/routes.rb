Rails.application.routes.draw do
  devise_for :users
  root to: 'meerkats#index'
  resources :users do
    resources :meerkats, except: [:index, :show, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :meerkats, only: [:index, :show, :edit, :update, :destroy]
end
