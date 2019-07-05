Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :index]
  resources :fish, only: [:index]
  resources :decorations, only: [:index]
  resources :tanks, only: [:new, :create]

  root to: "sessions#new"

  get "/register", to: "users#new"
  get "/login", to: "sessions#new"
  get "/tanks", to: "tanks#index"
  get "/tanks/:id", to: "tanks#show"
  post "/sessions", to: "sessions#create"
  post "/tanks/purchase", to: "tanks#purchase"
  post "/tanks/purchase_decoration", to: "tanks#purchase_decoration"
  post "/tanks/:id/press", to: "tanks#press"
  delete "/logout", to: "sessions#destroy"

end
