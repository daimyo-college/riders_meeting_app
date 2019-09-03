Rails.application.routes.draw do
  resources :comments
  resources :touring_routes
  resources :riders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
