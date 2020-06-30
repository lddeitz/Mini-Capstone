class Api::CartedProductsController < ApplicationController

def create
  @carted_products = CartedProduct.new(
    status: "carted",
    user_id: current_user.id,
    product_id: params[:product_id], 
    quantity: params[:quantity],
    order_id: nil
  )
  if @carted_products.save
    render "show.json.jb"
  else
    render json: {errors: @carted_products.errors.full_messages}, status: :unprocessable_entity
  end 
end

def index
  @carted_products = current_user.carted_products
  @carted_products.where(status: "carted")
  render 'index.json.jb'
end 

def destroy
  @carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
  @carted_product.status.update(status: "removed")
  render json: {status: "Carted product removed"}
end

end
