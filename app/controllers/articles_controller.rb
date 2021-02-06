
class ArticlesController < ApplicationController

  def show
    # params passed in from the request
    # byebug --> will open debug console and pause app
    @article = Article.find(params[:id]) # this is now an instance variable available in the view
  end

end
