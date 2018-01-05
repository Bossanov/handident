class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      # redirect_to
    else
      render :new
    end
  end


  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    # redirect_to house_path(@house)
  end

  private

  def article_params
  params.require(:article).permit(:article_title, :article_content, :article_photo)
  end
end
