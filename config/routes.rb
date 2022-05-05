Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/show'
  resources :products
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'products#index'
end
