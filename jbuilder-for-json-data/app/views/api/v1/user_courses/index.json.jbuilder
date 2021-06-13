json.array! @user_courses do |course|
  json.extract! course, :id, :title, :description
  json.topics course.topics, partial: 'api/v1/user_courses/topics', as: :topic
end