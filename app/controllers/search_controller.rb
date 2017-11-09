class SearchController < ApplicationController
	def show
	end
	
	
	def search_content
		@query = params[:search]
		@results = Article.search(params[:search])		
	end
end
