class Course < ActiveRecord::Base
	validates :name, :description, :syllabus, presence: true
end
