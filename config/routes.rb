Rails.application.routes.draw do
  root "sessions#new"

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy", as: "logout"
  get "/welcome", to: "sessions#index", as: "welcome"

  get "/secrets", to: "secrets#show", as: "secrets"
end
