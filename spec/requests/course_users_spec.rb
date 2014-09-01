require 'rails_helper'

RSpec.describe "CourseUsers", :type => :request do
  describe "GET /course_users" do
    it "works! (now write some real specs)" do
      get course_users_path
      expect(response.status).to be(200)
    end
  end
end
