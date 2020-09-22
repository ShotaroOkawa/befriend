Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index, :show]
  resources :articles
  resources :questions
  root to: 'countries#index'
end
