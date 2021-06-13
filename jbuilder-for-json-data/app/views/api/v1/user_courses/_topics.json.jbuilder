json.extract! topic, :id, :name, :description
json.is_completed topic.is_completed?(current_user)
if topic.is_completed?(current_user)
  json.assignments topic.assignments, partial: 'api/v1/user_courses/assignments', as: :assignment
end