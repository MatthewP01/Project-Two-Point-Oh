Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :index]
  resources :tanks
  resources :fish, only: [:index]

  get "/register", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"

end
