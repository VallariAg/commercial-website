Rails.application.routes.draw do
  root "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/products", to: "products#index"
  get "/:product_id/:item_id", to: "item#index"
  get "/:product_id", to: "products#show"
  # get "/item/:item_id", to: "item#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
