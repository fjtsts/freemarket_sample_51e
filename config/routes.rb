Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :items
  resources :user_profiles, only: [:new, :create, :edit]
  resources :addresses, only: [:new, :create, :edit]
  resources :users, only: [:index, :show, :edit, :new, :update]
  resources :purchases, only: [:new]
  root      "items#index"
  get '/purchases/:id/new', to: 'purchases#new'
  get '/users/:id/logout', to: 'users#logout'
  post 'users/:id/edit' => 'users#edit'

end
