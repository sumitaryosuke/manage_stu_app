Rails.application.routes.draw do
  get 'students/index'
  devise_for :users
  root to: 'students#index'
end
