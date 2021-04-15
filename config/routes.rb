Rails.application.routes.draw do
  devise_for :users
  root to: 'halls#index'

  resources :users, only: :show

  resources :halls do
    resources :values, only: :create
  end
end
