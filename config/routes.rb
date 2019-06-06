Rails.application.routes.draw do
  get 'card/new'
  get 'card/show'
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  resources :items
  resources :user_profiles, only: [:new, :create, :edit]
  resources :addresses, only: [:new, :create, :edit]
  resources :users, only: [:index, :show, :edit, :new]
  resources :purchases, only: [:new]
  resources :categories, only:[:index,:show]
  root      "items#index"
  get '/purchases/:id/new', to: 'purchases#new'
  get '/users/:id/logout', to: 'users#logout'
end

