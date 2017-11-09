module ApplicationHelper	
	def readable_date create_date
		create_date.to_date.strftime("%m/%d/%Y")
	end

	def active(path)		
		return "active" if current_page?(path) 		
	end	

	def active_article(controller)
		return "active" if params[:controller] == controller
	end
end
