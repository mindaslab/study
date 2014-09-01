require 'rails_helper'

RSpec.describe "chapters/new", :type => :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :name => "MyString",
      :content => "MyText",
      :course => nil
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "input#chapter_name[name=?]", "chapter[name]"

      assert_select "textarea#chapter_content[name=?]", "chapter[content]"

      assert_select "input#chapter_course_id[name=?]", "chapter[course_id]"
    end
  end
end
