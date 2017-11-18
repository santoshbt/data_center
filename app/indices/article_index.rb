ThinkingSphinx::Index.define :article, :with => :real_time do	
	indexes :title, sortable: true
	indexes :programming_language
	set_property :min_infix_len => 3
end

