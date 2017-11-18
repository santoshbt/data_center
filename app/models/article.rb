class Article < ApplicationRecord
	belongs_to :user, optional: false

	validates :title, presence: true
	validates :content, presence: true 
	
	include Searchable
	include Listable

	def title
		self[:title].capitalize if self[:title]
	end

	def content
		self[:content].html_safe if self[:content]
	end

end
