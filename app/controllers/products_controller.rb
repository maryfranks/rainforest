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
    @product = Product.find(params[:id])
  end

  def update

    @product = Product.find(params[:id])
    # @product.save(product_params)

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to products_path
    else
      render :edit
    end

  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
