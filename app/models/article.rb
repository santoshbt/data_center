class Article < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
	validates :content, presence: true

	scope :authored, -> (user_id) { where(:user_id => user_id) }
end
