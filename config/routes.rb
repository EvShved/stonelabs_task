Rails.application.routes.draw do
  devise_for :users
  resources :home, only: [:index]
  root to:'home#index'
  resources :users
  resources :questions, only: [:show]
  resources :categories, only: [:index, :show]
end
