class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @profile = current_user.profile
  end

  def create
    @review = Review.new(review_params)
    @profile = current_user.profile
    @review.profile = @profile
    @review.review_status = "pending"

    if @review.save
    redirect_to root_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:review_title, :review_content, :rating)

  end
end
