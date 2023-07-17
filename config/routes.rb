Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  resources :users, only: [:new, :create]  

  get "/login", to: "users#login_form", as: 'login'
  post "/login", to: "users#login"
end
