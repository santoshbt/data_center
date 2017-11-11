class SearchController < ApplicationController
	def show
	end
	
	
	def search_content
		@results = []
		@query = params[:search]		
		@results = Article.search(params[:search], :match_mode => :any)  unless params[:search].blank?
	end
end
