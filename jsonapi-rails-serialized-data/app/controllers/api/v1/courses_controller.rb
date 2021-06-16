class Api::V1::CoursesController < ApplicationController
  def index
    render jsonapi: current_user.courses,
           expose: { user: current_user },
           include: ["topics.assignments"]
  end
end