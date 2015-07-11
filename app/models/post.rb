class Post < ActiveRecord::Base
	belongs_to :post_category
	mount_uploader :avatar, PostImageUploader
end
