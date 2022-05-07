Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  resources :products do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      post 'purchase'
      get 'buy'
    end
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: %i[show edit update]
  get '/mypage' => 'users#mypage'
  root to: 'products#index'
end
