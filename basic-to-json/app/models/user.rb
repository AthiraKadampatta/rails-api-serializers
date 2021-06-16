class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :topics, through: :courses
  has_many :assignments, through: :topics
  has_many :user_topics
end