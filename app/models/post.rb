class Post < ActiveRecord::Base
	belongs_to :post_category
	mount_uploader :avatar, PostImageUploader

	extend FriendlyId
  	 friendly_id :slug, use: :slugged
end
