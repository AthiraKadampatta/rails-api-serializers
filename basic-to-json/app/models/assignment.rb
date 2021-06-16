class Assignment < ApplicationRecord
  belongs_to :topic
  belongs_to :course, optional: true
end