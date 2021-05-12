Rails.application.routes.draw do
  # get "/first_product", controller: "products", action: "show_first"
  # get "/all_products", controller: "products", action: "show_all"
  # get "/get_product_by_id", controller: "products", action: "any_product_method"
  # get "/get_product_by_id/:id", controller: "products", action: "any_product_method"

  # The below lines follow RESTful standards:
  get "/products" => "products#index"  #display a list of all products
  post "/products" => "products#create"  #create a new product
  get "/products/:id" => "products#show"  #display a specific product by id
  patch "/products/:id" => "products#update" #update a specific product by id
  delete "/products/:id" => "products#destroy" #delete a specific product by id

  get "/suppliers" => "suppliers#index"  #display a list of all suppliers
  post "/suppliers" => "suppliers#create"  #create a new product
  get "/suppliers/:id" => "suppliers#show"  #display a specific product by id
  patch "/suppliers/:id" => "suppliers#update" #update a specific product by id
  delete "/suppliers/:id" => "suppliers#destroy" #delete a specific product by id
end
