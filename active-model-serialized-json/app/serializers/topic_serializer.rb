class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  belongs_to :course
  has_many :assignments, if: -> { object.is_completed?(current_user) }

  attribute :is_completed do
    object.is_completed?(current_user)
  end
end
