class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def index
    @products = Product.all

    # render 'index'
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      render new_product_path
    end

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

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
