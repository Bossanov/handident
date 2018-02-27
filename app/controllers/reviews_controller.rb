class ReviewsController < ApplicationController
  def new
    @review = Review.new
    if current_user == nil
      redirect_to new_user_session_path
      flash[:alert] = 'Merci créer votre compte avant de publier un avis'
    else
      @profile = current_user.profile
    end
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

  def all
    @reviews =Review.all
  end

  private

  def review_params
    params.require(:review).permit(:review_title, :review_content, :rating)

  end
end
