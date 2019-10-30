Rails.application.routes.draw do
  namespace :admin do
      resources :courses

      root to: "courses#index"
    end
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
