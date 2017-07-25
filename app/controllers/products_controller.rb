class ProductsController < ApplicationController

  def new
  end

  def index
    @products = Product.all

    # render 'index'
  end

  def create
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def updated
  end

  def destroy
  end

end
