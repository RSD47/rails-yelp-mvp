class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.valid? == false
      render 'restaurants/show', status: :unprocessable_entity
    else
      @review.save
      redirect_to restaurant_path(@restaurant)
    end
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
