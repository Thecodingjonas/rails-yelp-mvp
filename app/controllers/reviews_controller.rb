class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    raise
    @review = Review.new{@restaurant}
  end

  def create

  end

  private
    def strong_params
      params.require(:reviews).permit(:content,:rating,:restaurant_id)
    end
end
