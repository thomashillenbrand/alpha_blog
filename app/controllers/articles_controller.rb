
class ArticlesController < ApplicationController

  def show
    # params passed in from the request
    # byebug --> will open debug console and pause app
    @article = Article.find(params[:id]) # this is now an instance variable available in the view
  end

  def index
    @articles = Article.all
  end

  def new; end

  def create
    # render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
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

end
