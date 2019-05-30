Rails.application.routes.draw do
  
  devise_for :users
  resources :items
  resources :users, only: [:index, :show]
  root      "items#index"
end
