Rails.application.routes.draw do
  
  root "items#index"
  get"items"  => "items#index"
end
