require 'rails_helper'

RSpec.describe "course_users/index", :type => :view do
  before(:each) do
    assign(:course_users, [
      CourseUser.create!(
        :course => nil,
        :user => nil,
        :role => 1
      ),
      CourseUser.create!(
        :course => nil,
        :user => nil,
        :role => 1
      )
    ])
  end

  it "renders a list of course_users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
