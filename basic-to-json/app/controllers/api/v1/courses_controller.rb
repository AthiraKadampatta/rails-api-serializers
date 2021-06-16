class Api::V1::CoursesController < ApplicationController
  def index
    render json: current_user.courses.to_json(include: { topics: { include: :assignments } })
  end
end