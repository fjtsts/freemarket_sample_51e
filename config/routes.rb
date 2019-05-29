Rails.application.routes.draw do
  
  resources :items
  resources :users, only: [:show]
  root      "items#index"
end
