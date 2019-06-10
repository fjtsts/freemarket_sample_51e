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
    resources :comments
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
  
  get '/purchases/:id/new', to: 'purchases#new'
end

