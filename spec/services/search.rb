require 'rails_helper'

RSpec.describe Search, type: :service do
	describe 'search' do
		before do
			@article = FactoryBot.create(:article)  	
			@search = Search.new("Article", "ruby")
		end

		it "search ruby article" do			
			article_search = @search.do_search			
			total = article_search.total
			expect(total).to be > 0
		end
	end
end