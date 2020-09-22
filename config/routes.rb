Rails.application.routes.draw do
  devise_for :users
  resources :countries, only: [:index, :show]
  resources :articles
  resources :questions do
    resources :answers, only: [:new, :create]
  end
  root to: 'countries#index'
end
