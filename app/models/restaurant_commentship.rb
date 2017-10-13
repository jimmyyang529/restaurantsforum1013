class RestaurantCommentship < ApplicationRecord
	belongs_to :restaurant #單數
    belongs_to :comment #單數
end
