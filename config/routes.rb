Rails.application.routes.draw do
  resources :events
  devise_for :users
  root to: 'students#index'

  resources :students, only: [:show]
  resources :managers, only: [:index]
  resources :users,    only: [:index, :show]
  resources :scores,   only: [:new, :create, :edit, :update, :destroy]
end
