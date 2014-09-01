require 'rails_helper'

RSpec.describe "course_users/show", :type => :view do
  before(:each) do
    @course_user = assign(:course_user, CourseUser.create!(
      :course => nil,
      :user => nil,
      :role => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
