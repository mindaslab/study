require 'rails_helper'

RSpec.describe "Chapters", :type => :request do
  describe "GET /chapters" do
    it "works! (now write some real specs)" do
      get chapters_path
      expect(response.status).to be(200)
    end
  end
end
