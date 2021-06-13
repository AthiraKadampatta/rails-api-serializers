class Api::V1::CoursesController < ApplicationController
  def index
    render json: current_user.courses, include: "topics.assignments"
  end
end