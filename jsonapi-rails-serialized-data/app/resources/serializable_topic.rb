class SerializableTopic < JSONAPI::Serializable::Resource
  extend JSONAPI::Serializable::Resource::ConditionalFields
  type 'topics'
  
  attributes :name, :description

  belongs_to :course
  has_many :assignments, if: -> { @object.is_completed?(@user) }

  attribute :is_completed do ||
    @object.is_completed?(@user)
  end 
end