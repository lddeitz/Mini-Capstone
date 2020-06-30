class ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def show
    @products = Product.find(params[:id])
    render "show.html.erb"
  end

  def create
    @products = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id]
    )
    
    @products.save
    redirect_to "/products/#{@products.id}"
  end

  def edit
    @products = Product.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @products = Product.find(params[:id])
    @products.name = params[:name]
    @products.price = params[:price]
    @products.description = params[:description]
    @products.in_stock = params[:in_stock]
    @products.supplier_id = params[:supplier_id]
    @products.save
    redirect_to "/products/#{@products.id}"
  end

  def destroy
    @products = Product.find(params[:id])
    @products.delete
    redirect_to "/products/"
  end


end
