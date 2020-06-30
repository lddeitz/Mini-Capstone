Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
   get "/products" => "products#index"
   get "/products/new" => "products#new"
   get "products/:id" => "products#show"
   post "/products" => "products#create"
   get "/products/:id/edit" => "products#edit"

   patch "/products/:id" => "products#update"

   delete "/products/:id" => "products#destroy"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #Query Parameter
    # get "/query-parameter" => "products#all_products_actionquery"

    #REST

    get "products" => "products#index"
    post "products" => "products#create"
    get "products/:id" => "products#show"
    patch "products/:id" => "products#update"
    delete "products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"

    post "/cartedproducts" => "carted_products#create"
    get "/cartedproducts" => "carted_products#index"

    delete "/carted-products/:id" => "carted_products#destroy"
  end
end
