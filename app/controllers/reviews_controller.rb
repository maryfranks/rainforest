class ReviewsController < ApplicationController

  def create
    @review = Review.new
    product_id = params[:product_id]
    @product = Product.find(product_id)
    @reviews = @product.reviews

    @review.comment = params[:review][:comment]
    @review.product_id = product_id

    if @review.save
      redirect_to product_path(@product.id)
    else
      render 'products/show'
    end

    flash[:notice] = "You have successfully created a new review!"
  end

  def update # INTERNAL SERVER ERROR LINE 23, 24, ALL OF THEM
    @review = find(params[:id]
    # product_id = params[:product_id]
    @product = Product.find(product_id)
    @reviews = @product.reviews

    @review.comment = params[:review][:comment]
    # @review.product_id = product_id

    if @review.save
      redirect_to product_path(@product.id)
    else
      render 'products/show'
    end
  end
end
