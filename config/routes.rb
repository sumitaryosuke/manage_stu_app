Rails.application.routes.draw do
  resources :events
  get 'students/index'
  devise_for :users
  root to: 'students#index'
  
  resources :managers, only: [:index]
end
