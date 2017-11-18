module Searchable
	extend ActiveSupport::Concern

	included do
		after_save ThinkingSphinx::RealTime.callback_for(:article)
	end

end