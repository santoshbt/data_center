Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  
  resources :articles do
  	collection do
  		get 'owned', to: 'articles#authored_articles'  		
  	end
  end

  get 'search', to: 'search#show'
  get 'search/articles', to: 'search#search_content'

  root to: 'home#welcome'
end
