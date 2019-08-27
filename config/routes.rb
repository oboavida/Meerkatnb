Rails.application.routes.draw do
  devise_for :users
  root to: 'meerkats#index'
  resources :users, except: [:index, :show] do
    resources :meerkats, except: [:index, :show, :edit, :update] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :meerkats, only: [:index, :show, :edit, :update]
end
