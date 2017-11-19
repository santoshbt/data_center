class Search
	def initialize(search_class, search_param = nil)
		@search_class = search_class
		@search_param = search_param
	end

	def do_search
		_class = @search_class.constantize rescue nil
		unless _class.blank?
			results = _class.search(@search_param, :star => true)  
			total  = results.size					
		end	
		return OpenStruct.new( {:results => results, :total => total } )
	end
end