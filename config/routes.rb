Rails.application.routes.draw do
  root "home#index"
  
  get '/about', to: "about#index"

  get "/products", to: "products#index"
  get "/:product_id/:item_id", to: "item#index"
  get "/:product_id", to: "products#show"
  # get "/item/:item_id", to: "item#index"

end
