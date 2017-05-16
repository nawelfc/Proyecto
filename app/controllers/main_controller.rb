class MainController < ApplicationController
  def index
	if params[:search]
    @articles = Article.search(params[:search])
  else
    @articles = Article.page params[:page]
  end
   end
end
