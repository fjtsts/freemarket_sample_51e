Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :items
  resources :user_profiles, only: [:new, :create, :edit]
  resources :addresses, only: [:new, :create, :edit]
  resources :users, only: [:index, :show, :edit, :new]
  resources :purchases, only: [:new]
  resources :categories, only:[:index]
  root      "items#index"
  get '/purchases/:id/new', to: 'purchases#new'
  get '/users/:id/logout', to: 'users#logout'
end
