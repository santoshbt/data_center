Rails.application.routes.draw do
  devise_for :users
  resources :articles do
  	collection do
  		get 'owned', to: 'articles#authored_articles'  		
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#welcome'
end
