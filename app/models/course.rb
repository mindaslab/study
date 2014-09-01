class Course < ActiveRecord::Base
  has_many :chapters
  validates :name, :description, :syllabus, presence: true
end
