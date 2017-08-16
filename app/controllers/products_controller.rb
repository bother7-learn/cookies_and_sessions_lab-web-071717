class ProductsController < ApplicationController
  def index
    @my_cart = cart

  end

  def create
    @product = Product.create(name: params[:product])
    cart << @product.name
    redirect_to '/products/index'
  end

  def new
    @product = Product.new
  end

  def add
    @product = Product.create(name: params[:id])
    cart << params[:id]
    redirect_to '/products/index'
  end
end
