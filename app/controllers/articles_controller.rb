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
      flash[:notice] = 'Votre article a été sauvegardé !'

    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'

    end
  end

  def show
    # @article = Article.find(params[:profile_id])
    # récupérer l'article qui nous interesse
    @article = Article.find(4)
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
    flash[:notice] = 'Votre article a été modifié, merci !'

  end

  private

  def article_params
  params.require(:article).permit(:article_title, :article_content, :article_photo, :article_photo_cache )
  end
end
