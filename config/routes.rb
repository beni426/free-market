Rails.application.routes.draw do
  get 'users/show'
  resources :products
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'products#index'
end
