Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :users, only: [:index, :show, :edit]
  root      "items#index"
end
