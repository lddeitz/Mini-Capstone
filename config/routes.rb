Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/shop" => "products#all_products_action"

    # get "/product-1" => "products#product1_action"

    # get "/product-2" => "products#product2_action"

    # get "/product-3" => "products#product3_action"

    #Query Parameter
    # get "/query-parameter" => "products#all_products_actionquery"

    #REST

    get "/products" => "products#index"

    post "products" => "products#create"

    patch "products/:id" => "products#update"

    delete "products/:id" => "products#destroy"
       
  end
end
