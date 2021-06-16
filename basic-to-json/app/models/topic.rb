class Topic < ApplicationRecord
  belongs_to :course
  has_many :assignments

  def is_completed?(user)
    user.user_topics.where(topic_id: id).where('completed_at IS NOT NULL').exists?
  end
end