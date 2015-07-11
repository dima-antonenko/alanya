class Event < ActiveRecord::Base
	mount_uploader :avatar, EventUploader

	has_many :event_attachments, inverse_of: :event
	accepts_nested_attributes_for :event_attachments, allow_destroy: true
end
