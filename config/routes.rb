Rails.application.routes.draw do
  devise_for :users, module: :users
  get 'home/index'
  get 'home/show'
  root to: "home#index"
  resources :comments
  resources :touring_routes
  resources :riders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
