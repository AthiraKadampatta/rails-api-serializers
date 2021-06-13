class Course < ApplicationRecord
  has_many :topics
  has_many :assignments, through: :topics
  has_many :user_courses
end