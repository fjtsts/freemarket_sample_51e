Rails.application.routes.draw do
  
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :brands,only:[:index,:show]
  resources :card, only: [:new, :show, :destroy] do
    collection do
      post 'pay', to: 'card#pay'
    end
  end
  resources :items do
    get 'select_category' , to: 'items#select_category', on: :collection
    post 'resale', to: 'items#resale', on: :member
    post 'stop', to: 'items#stop', on: :member
    resources :comments, only: [:create, :update]
    resources :favorite_items, only: [:create, :destroy]
    resources :purchases, only: [:index] do
      collection do
        post 'pay', to: 'purchases#pay'
      end
    end
    resources :reviews, only: [:create, :new, :show]
  end
  resources :user_profiles, only: [:new, :create, :edit]
  resources :addresses, only: [:new, :create, :edit, :show, :update]
  resources :users, only: [:index, :show, :edit, :new, :update] do
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
  get 'favorite_items', to: 'favorite_items#index'
end

