class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
     redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
     redirect_to user_path(current_user.id)
    else
      render :show
    end
  end

  private
  def article_params
    params.require(:article).permit(:image, :country_id, :country_id, :category_id, :title, :description).merge(user_id: current_user.id)
  end
end
