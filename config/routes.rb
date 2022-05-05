Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'products#index'
end
