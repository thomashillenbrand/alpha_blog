class ArticlesController < ApplicationController

  before_action :set_article, only: %i[show edit update destroy]

  def show
    # params passed in from the request
    # byebug --> will open debug console and pause app
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new #intiate to avoid errors on new page, but we also have "&".
  end

  def create
    # render plain: params[:article]
    @article = Article.new(article_params)
    # render plain: @article.inspect
    if @article.save
      flash[:notice] = "Article was created successfully."
      # redirect_to article_path(@article)
      redirect_to @article
      # redirect_to articles_path
    else
      render 'new' # will have the article object created as instance variable
    end
  end

  def edit; end

  def update
    # byebug
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
