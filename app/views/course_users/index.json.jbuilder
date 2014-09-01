json.array!(@course_users) do |course_user|
  json.extract! course_user, :id, :course_id, :user_id, :role
  json.url course_user_url(course_user, format: :json)
end
