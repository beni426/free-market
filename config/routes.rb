Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: %i[show edit update]
  get '/mypage' => 'users#mypage'
  root to: 'products#index'
end
