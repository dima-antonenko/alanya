class EventAttacment < ActiveRecord::Base
   belongs_to :event
   mount_uploader :image, EventUploader
end
