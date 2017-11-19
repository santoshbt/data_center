ThinkingSphinx::Index.define :article, :with => :real_time do	
	indexes :title, sortable: true
	indexes :programming_language
end

