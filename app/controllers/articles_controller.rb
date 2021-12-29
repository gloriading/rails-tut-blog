class ArticlesController < ApplicationController
  def index
    @name = 'Gloria'
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # The new action instantiates a new article, but does not save it. 
    # This article will be used in the view when building the form. 
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: 303
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
