
class ArticlesController < ApplicationController

  def show
    # params passed in from the request
    byebug
    @article = Article.find(params[:id]) # this is now an instance variable available in the view
  end

end
