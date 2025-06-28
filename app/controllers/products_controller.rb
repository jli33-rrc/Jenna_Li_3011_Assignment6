class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.includes(:category).all
  end

  def show
    # @product = Product.find(params[:id])
    @product = Product.includes(:category).find(params[:id])
  end
end
