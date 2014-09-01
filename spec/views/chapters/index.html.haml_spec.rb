require 'rails_helper'

RSpec.describe "chapters/index", :type => :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :name => "Name",
        :content => "MyText",
        :course => nil
      ),
      Chapter.create!(
        :name => "Name",
        :content => "MyText",
        :course => nil
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
