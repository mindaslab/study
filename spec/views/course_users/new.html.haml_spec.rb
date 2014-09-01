require 'rails_helper'

RSpec.describe "course_users/new", :type => :view do
  before(:each) do
    assign(:course_user, CourseUser.new(
      :course => nil,
      :user => nil,
      :role => 1
    ))
  end

  it "renders new course_user form" do
    render

    assert_select "form[action=?][method=?]", course_users_path, "post" do

      assert_select "input#course_user_course_id[name=?]", "course_user[course_id]"

      assert_select "input#course_user_user_id[name=?]", "course_user[user_id]"

      assert_select "input#course_user_role[name=?]", "course_user[role]"
    end
  end
end
