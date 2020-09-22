Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index, :show] do
    resources :articles, only: [:new, :create]
  end
  resources :articles
  root to: 'countries#index'
end
