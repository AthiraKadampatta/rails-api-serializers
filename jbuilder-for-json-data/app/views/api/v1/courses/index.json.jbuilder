json.array! @courses do |course|
  json.extract! course, :id, :title, :description
  json.topics course.topics, partial: 'api/v1/courses/topics', as: :topic
end