class SearchController < ApplicationController	
	require 'will_paginate/array'

	def show
	end
		
	def search_content
		@results = []
		@total_results = 0
		@query = params[:search]		
		unless params[:search].blank?
			article_search = Search.new('Article', @query).do_search			
			@results = article_search.results.paginate(page: params[:page], per_page: 5)
			@total_results = article_search.total
		end		

		respond_to do |format|
		    format.html 
		    format.json { render json: @results }
		    format.js
		end
	end
end
