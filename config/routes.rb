Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

    get "/sobre", to:"sobre#index"
    get "/produto", to:"produto#index"
    post "/produto/incluir", to:"produto#incluir"
end
