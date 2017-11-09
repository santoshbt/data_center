class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def user_signed_in?
  	unless current_user
  		redirect_to articles_path 
  		flash[:alert] = "Please login to access"
  	end
  end
end
