class Api::ProductsController < ApplicationController

before_action :authenticate_admin, except: [:index, :show]

def index
  @products = Product.all
    if params[:search]
      @products = @products.where("name iLIKE =?", "%#{params[:search]}%")
    end 
    if params[:discount]
      @products = @products.where("price < ?", 10)
    end 
    
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end 

  if params[:sort] == "price"     #this all the way to line 20 - confusing
     if params[:sort_order] == "asc"
       @products = @products.order(:price)
     elsif params[:sort_order] == "desc"
       @products = @products.order(price: :desc)
     end 
    else 
      @products = @products.order(:id)
    end 
    render 'index.json.jb'
  end 

end                                  #confusion stops

def show
  @product = Product.find(params[:id])
  render 'show.json.jb'
end 

def create
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    supplier_id: params[:supplier_id]
  )
  if @product.save #happypath
    render 'show.json.jb' 
  else #sadpath
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end 
end

def update
#find the product
  @product = Product.find(params[:id])
#update attributes
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

#save the product
  if @product.save #happy path
    render 'show.json.jb' 
  else #sad path
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end 
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  render json: {message: "Successfully destroyed"}
end

