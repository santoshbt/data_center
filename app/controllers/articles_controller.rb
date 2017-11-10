class ArticlesController < ApplicationController
	before_action :user_signed_in?, only: [:new, :create, :edit, :update, :authored_articles]

	def index
		@articles = Article.paginate(page: params[:page], per_page: 3)
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new article_params
		@article.user = current_user
		if @article.save
			redirect_to article_path(@article.id)
			flash[:notice] = "Article created successfully"
		else
			flash[:alert] = "Article cannot be created successfully, please ensure 
							to give both Title and Article content"
			render :new			
		end
	end

	def edit
		@article = Article.find params[:id]		
	end

	def update
		@article = Article.find params[:id]
		if @article.update_attributes article_params
			redirect_to article_path(@article.id)
			flash[:notice] = "Article updated successfully"
		else			
			flash[:alert] = "Article cannot be created successfully, please ensure 
							to give both Title and Article content"
			render :edit							
		end
	end

	def show
		@article = Article.find params[:id]
	end

	def authored_articles
		authored_articles = Article.authored current_user.id
		@authored_articles = authored_articles.paginate(:page => params[:page], :per_page => 3)
	end

	private
	def article_params
		params.require(:article).permit(:title, :content, :programming_language, :user_id)
	end
end
