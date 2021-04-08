Rails.application.routes.draw do
  resources :events
  devise_for :users
  root to: 'students#index'
  
  resources :managers, only: [:index]
  resources :users, only: [:index]
end
