require 'rails_helper'

RSpec.describe "chapters/edit", :type => :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :name => "MyString",
      :content => "MyText",
      :course => nil
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "input#chapter_name[name=?]", "chapter[name]"

      assert_select "textarea#chapter_content[name=?]", "chapter[content]"

      assert_select "input#chapter_course_id[name=?]", "chapter[course_id]"
    end
  end
end
