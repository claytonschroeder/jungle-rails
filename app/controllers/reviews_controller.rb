class ReviewsController < ApplicationController


def create
  @product = Product.find(params[:product_id])
  @review = @product.reviews.create(review_params)
  @review.user = current_user

  if @review.save
    redirect_to product_path(@product)
  else
    redirect_to '/'
  end
end

private
def review_params
    params.require(:review).permit(:description, :rating)
  end
end
