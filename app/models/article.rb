class Article < ApplicationRecord
	belongs_to :user, optional: false

	validates :title, presence: true
	validates :content, presence: true

	scope :authored, -> (user_id) { where(:user_id => user_id) }
	after_save ThinkingSphinx::RealTime.callback_for(:article)

	def title
		self[:title].capitalize if self[:title]
	end

	def content
		self[:content].html_safe if self[:content]
	end

end
