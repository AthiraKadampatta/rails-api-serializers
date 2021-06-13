class SerializableCourse < JSONAPI::Serializable::Resource
  type 'courses'

  attributes :title, :description

  has_many :topics
end