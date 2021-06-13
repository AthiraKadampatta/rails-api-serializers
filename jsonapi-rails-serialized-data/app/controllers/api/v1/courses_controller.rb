class Api::V1::CoursesController < ApplicationController
  def index
    render jsonapi: current_user.courses,
           expose: { user: current_user },
           include: ["topics.assignments"]

    # report = Benchmark.measure do
    #   render jsonapi: User.last.courses,
    #        expose: { user: User.last },
    #        include: ["topics.assignments"]
    # end
    # puts report.to_s
  end
end