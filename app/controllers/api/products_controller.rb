class Api::ProductsController < ApplicationController
# require 'http'

# params = {params[:id]}

# response = HTTP.get('localhost:3000/api/products', params)

  def all_products_action
  @products = Product.all
  render 'all_products.json.jb'
end

# def product1_action
#   @product = Product.find_by(id: 1)
#   render 'product.json.jb' 
# end

def product1_action
    @name = params["name"]
    render 'product.json.jb' 
end

def product2_action
  @product = Product.find_by(id: 2)
  render 'product.json.jb' 
end

def product3_action
  @product = Product.find_by(id: 3)
  render 'product.json.jb'  
end

def all_products_actionquery
  @product = Product.find_by(params["name"])
  render 'newquery.json.jb' 
end 

# def index
#   @product = Product.find_by(id: params[:id])
#   render 'index.json.jb'
# end

def create
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    image_url: params[:image_url]
  )
  @product.save
  render 'create.json.jb'
end

def update
#find the product
  @product = Product.find_by(id: params[:id])
#update attributes
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.image_url = params[:image_url] || @product.image_url
#save the product
  @product.save
#render the view
  render 'create.json.jb'
end

def destroy
  @product = Product.find_by(id: params[:id])
  @product.destroy
  render json: {message: "Successfully destroyed!"}
end

def index
  
end

end
