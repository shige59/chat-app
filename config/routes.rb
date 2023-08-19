Rails.application.routes.draw do
  resources :rooms, only: [:new, :create]
  devise_for :users
  get 'messages/index'
  root "messages#index"
  resources :users, only: [:edit, :update]
end
