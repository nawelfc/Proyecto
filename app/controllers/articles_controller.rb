class ArticlesController < ApplicationController
	before_action :authenticate_user!, except: [:show, :add_comment, :create_comment, :index]
	def index
		@articles = Article.all
	end
	
	def show
     	@article = Article.find(params[:id])
  	end

  	def edit
  		@article = Article.find(params[:id])
	end

  	def create_comment
		@comment = Comment.new(comment_params)
		@article = Article.find(params[:id])
		if @article.comments << @comment
			redirect_to @article
		else
			render 'add_comment'
		end
	end

  	def add_comment
  		@comment = Comment.new()
     	@article = Article.find(params[:id])
  	end

	def new
	end

	def create
		@article = Article.new(article_params)
 		@article.save
		redirect_to @article	
	end

	def update
  		@article = Article.find(params[:id])
 
  		if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@article = Article.find(params[:id])
  		@article.destroy
		redirect_to articles_path
	end

	private
 	def article_params
		params.require(:article).permit(:title, :text, :foto)
  	end

	def comment_params
		params.require(:comment).permit(:commenter, :text)
  	end
end