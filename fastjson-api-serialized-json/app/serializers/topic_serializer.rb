class TopicSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description

  has_many :assignments, if: Proc.new { |topic, params| topic.is_completed?(params[:current_user]) }

  attribute :is_completed do |topic, params|
    topic.is_completed?(params[:current_user])
  end
end
