Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  
  resources :articles do
  	collection do
  		get 'owned', to: 'articles#authored_articles'  		
  	end
  end

  get 'search', to: 'search#show'
  post 'search/articles', to: 'search#search_content'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#welcome'
end
