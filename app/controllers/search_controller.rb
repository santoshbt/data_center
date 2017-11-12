class SearchController < ApplicationController
	require 'will_paginate/array'

	def show
	end
	
	
	def search_content
		@results = []
		@total_results = 0
		@query = params[:search]		
		unless params[:search].blank?
			results = Article.search(params[:search], :match_mode => :any)  
			@total_results = Article.search_count(params[:search], :match_mode => :any)
			@results = results.paginate(page: params[:page], per_page: 5)
		end		

		respond_to do |format|
		    format.html 
		    format.json { render json: @results }
		    format.js
		end
	end
end
