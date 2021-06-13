class CourseSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :description

  has_many :topics
end
