require 'rails_helper'

describe 'navigate' do
	describe 'Articles Index' do
		before do
			visit articles_path
		end

		it 'can be reached successfully' do			
			expect(page.status_code).to eq(200)
		end

		it 'has List of Articles section' do			
			expect(page).to have_content(/Articles/)
		end		
	end

	describe 'Articles Create' do
		before do
			@user = FactoryBot.create(:user)					
		end

		it 'only authenticated user can create the article' do
			login_as(@user, scope: :user)
			visit new_article_path

			expect(page.status_code).to eq(200)
			fill_in 'article[title]', with: "Ruby Coding", visible: false	
			fill_in 'article[content]', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
            								Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a 
           									galley of type and scrambled it"	    
		    click_on "Create Article"
		    
		    expect(page).to have_content("Article created successfully")
		end

		it 'non authenticated user cannot access create page' do
			visit new_article_path
			expect(current_path).to eq(articles_path)
			expect(page).to have_content("Please login to access")
		end
	end

	describe 'Articles Edit' do
		before do
			@user = FactoryBot.create(:user)					
			article = FactoryBot.create(:article)
			@article = Article.find article.id
		end

		it 'only authenticated user can edit the article' do
			login_as(@user, scope: :user)
			visit edit_article_path(@article.id)

			expect(page.status_code).to eq(200)
			fill_in 'article[title]', with: "Awesome Ruby Coding", visible: false	
			fill_in 'article[content]', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
            								Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a 
           									galley of type and scrambled it"	    
		    click_on "Update Article"
		    
		    expect(page).to have_content("Article updated successfully")
		end

		it 'non authenticated user cannot access create page' do
			visit edit_article_path(@article.id)
			expect(current_path).to eq(articles_path)
			expect(page).to have_content("Please login to access")
		end
	end

	describe "My Articles" do 
		before do
			@user = FactoryBot.create(:user)
		end
		
		it "authenticated user can view all his articles" do
			login_as(@user, scope: :user)
			visit owned_articles_path
			expect(page).to have_content(/My Articles/)
		end

		it 'non authenticated user cannot access this page' do
			visit owned_articles_path
			expect(current_path).to eq(articles_path)
			expect(page).to have_content("Please login to access")
		end
	end
end