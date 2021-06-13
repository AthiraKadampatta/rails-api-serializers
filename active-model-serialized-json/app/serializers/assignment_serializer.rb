class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :description

  belongs_to :topic
end
