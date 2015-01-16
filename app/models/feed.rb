class Feed < ActiveRecord::Base
	belongs_to :user
	# validates: content, length: { maximum: 3000},
	# 										presence: true
end
