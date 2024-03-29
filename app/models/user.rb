class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def to_s
  	self.email
  end

  def studies? course
  	CourseUser.student.where(user: self, course: course).first
  end

  def teaches? course
  	CourseUser.teacher.where(user: self, course: course).first
  end
end
