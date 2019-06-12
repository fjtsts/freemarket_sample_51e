Rails.application.routes.draw do
  
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :card, only: [:new, :show, :destroy] do
    collection do
      post 'pay', to: 'card#pay'
    end
  end
  resources :items do
    post 'resale', to: 'items#resale', on: :member
    post 'stop', to: 'items#stop', on: :member
    resources :comments, only: [:create, :update]
    resources :purchases, only: [:index] do
      collection do
        post 'pay', to: 'purchases#pay'
      end
    end
    resources :reviews, only: [:create, :new]
  end
  resources :user_profiles, only: [:new, :create, :edit]
  resources :addresses, only: [:new, :create, :edit, :show]
  resources :users, only: [:index, :show, :edit, :new] do
    get :logout, on: :collection
  end
  resources :purchases, only: [:new]
  resources :categories, only:[:index,:show]
  root to: "items#index"
  get 'search', to: 'items#search'
  get 'purchased', to: 'purchases#purchased'
  get 'reviews', to: 'reviews#index'
  resources :exhibits, only: [:index] do
    get 'sold', to: 'exhibits#sold', on: :collection
  end
end

