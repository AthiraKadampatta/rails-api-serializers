class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :topics
  has_many :user_courses
end
