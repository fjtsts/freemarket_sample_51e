Rails.application.routes.draw do
  
  devise_for :users
  resources :items
  resources :user_profiles, only: [:new, :create, :edit]
  resources :addresses, only: [:new, :create, :edit]
  resources :users, only: [:index, :show]
  root      "items#index"
end
