module Listable
	extend ActiveSupport::Concern

	included do		
		default_scope { order(updated_at: :desc) }
		scope :authored, -> (user_id) { where(:user_id => user_id) }
	end
end