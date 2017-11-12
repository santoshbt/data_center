require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
  	before do
  		 @article = FactoryBot.create(:article)  	
  	end

  	it 'can be created' do  		
  		expect(@article).to be_valid
  	end

  	it 'cannot be created without title and content' do  		
  		@article.title = nil
  		@article.content = nil

  		expect(@article).to_not be_valid
  	end
  end

  describe "updation" do
    before do
       article = FactoryBot.create(:article)   
       @article = Article.find article.id
    end

    it 'can be edited' do
      p "Old Article title == " + @article.title  
      @article.title = "My Awesome Ruby book" 
      p "New Article title == " + @article.title  
      
      @article.save
      expect(@article).to be_valid
    end    
  end
end
