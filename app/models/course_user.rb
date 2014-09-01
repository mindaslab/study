class CourseUser < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  enum role: [:student, :teacher]
end
