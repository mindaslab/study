class Chapter < ActiveRecord::Base
  belongs_to :course
  validates :name, :content, presence: true
  # validate :must_belong_to_a_course

  private
  # def must_belong_to_a_course
  #   course = Course.find course_id
  #   errors.add(:course_id, " must be a valid course")
  # end
end
