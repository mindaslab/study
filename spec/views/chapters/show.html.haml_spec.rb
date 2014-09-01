require 'rails_helper'

RSpec.describe "chapters/show", :type => :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :name => "Name",
      :content => "MyText",
      :course => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
