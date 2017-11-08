class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	private
	def article_params
		params.require(:article).permit(:title, :content)
	end
end
