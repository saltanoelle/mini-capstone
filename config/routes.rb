Rails.application.routes.draw do
  get "/products"=>"products#index"

  get "/products/new"=> "products#new"

  get "/products"=> "products#create"

  get "/products/:id" => "products#show"

  get "/products/:id/edit"=>"products#edit"

  patch "/recipes/:id" => "recipes#update"
  
  get "/product/:id"=> "products#destroy"
end
