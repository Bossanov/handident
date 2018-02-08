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
      flash[:notice] = 'Merci pour votre commentaire !'
    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'
    end
  end

  def allreviews
    @reviews =Review.all
  end

  private

  def review_params
    params.require(:review).permit(:review_title, :review_content, :rating)

  end
end
