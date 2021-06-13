class SerializableAssignment < JSONAPI::Serializable::Resource
  type 'assignments'

  attributes :description

  belongs_to :topic
end