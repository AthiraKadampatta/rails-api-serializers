class Api::V1::CoursesController < ApplicationController
  include ActionController::Helpers
  helper_method :current_user
  
  def index
    # puts "Benchmark data"
    # puts Benchmark.measure { render_jbuilder(User.last, User.last.courses) }.to_s
    @user_courses = current_user.courses   
  end

  private

  def render_jbuilder(user, user_courses)
    Jbuilder.encode do |json|
      json.array! user_courses do |course|
        json.extract! course, :id, :title, :description
        json.topics course.topics.each do |topic|
          json.extract! topic, :id, :name, :description
          json.is_completed topic.is_completed?(user)
          if topic.is_completed?(user)
            json.assignments topic.assignments.each do |assignment|
              json.extract! assignment, :id, :description
            end
          end
        end
      end
    end
  end
end