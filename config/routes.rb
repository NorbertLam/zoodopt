Rails.application.routes.draw do
  root 'application#home'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/new", to: "users#new"
  post "/new", to: "users#create"

  resources :animals, only: [:index, :show, :new, :create]
  resources :pets, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:show, :new, :create]

end
