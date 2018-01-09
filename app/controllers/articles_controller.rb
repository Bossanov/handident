class ArticlesController < ApplicationController
  def index
    @articles =Article.all
  end

  def new
    @article = Article.new
    @profile = current_user.profile
     # @profile = current_user.profile
  end

  def create
    @article = Article.new(article_params)
    @profile = current_user.profile
    @article.profile = @profile

    if @article.save
    redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:profile_id])
  end


  def edit
    @article = Article.find(params[:profile_id])
    @profile = current_user.profile

    # @profile = current_user.profile
  end

  def update
    @article = Article.find(params[:profile_id])
    @profile = current_user.profile
    @article.profile = @profile
    @article.update(article_params)
    redirect_to root_path
  end

  private

  def article_params
  params.require(:article).permit(:article_title, :article_content, :article_photo, :article_photo_cache )
  end
end
