Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index, :show]
  resources :articles
  root to: 'countries#index'
end
