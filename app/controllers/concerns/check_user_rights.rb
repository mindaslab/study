module CheckUserRights
  private
  def must_be_student_or_teacher
    if not(current_user.studies?(@course) or current_user.teaches?(@course))
      redirect_to :back, notice: t(:non_teacher_student_notice)
    end
  end

  def must_be_teacher
    redirect_to :back, notice: t(:non_teacher_notice) unless current_user.teaches? @course
  end
end