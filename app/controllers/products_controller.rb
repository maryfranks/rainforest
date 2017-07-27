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

    flash[:notice] = "You have successfully created a new product!"

  end

  def show
    @product = Product.find(params[:id])
    @reviews = Review.where(product_id: @product.id)

    @review = Review.new
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

    flash[:notice] = "Product successfully updated! "

  end

  def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to products_path

      flash[:notice] = "Product has been successfully deleted!"

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
