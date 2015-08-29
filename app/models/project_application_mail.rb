class ProjectApplicationMail < ActiveRecord::Base
	belongs_to :project

	#validates :name, presence: true
	validates :email, presence: true
end
