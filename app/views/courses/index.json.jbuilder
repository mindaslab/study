json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :syllabus
  json.url course_url(course, format: :json)
end
