class Chapter < ActiveRecord::Base
  belongs_to :course

  validates :name, :content, presnece: true
  validates :course_id, numericality: true
end
