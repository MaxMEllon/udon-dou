Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboard#index'

  resources :shops, only: [:new]
end
