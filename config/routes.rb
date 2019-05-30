Rails.application.routes.draw do
  resources :items
  resources :users, only: [:index, :show]
  root      "items#index"
end
