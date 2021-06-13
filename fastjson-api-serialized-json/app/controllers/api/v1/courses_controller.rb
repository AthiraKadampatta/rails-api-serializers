class Api::V1::CoursesController < ApplicationController
  def index
    render json: CourseSerializer.new(current_user.courses, { params: { current_user: current_user }, include: [:'topics.assignments'] })
  end
end