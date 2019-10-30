Rails.application.routes.draw do
  root "home#index"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]  

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  post "/sessions/new", to: "sessions#create"

  
  namespace :admin do
    resources :courses

    root to: "courses#index"
  end
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
