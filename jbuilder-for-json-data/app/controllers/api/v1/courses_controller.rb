class Api::V1::CoursesController < ApplicationController
  include ActionController::Helpers
  helper_method :current_user
  
  def index
    @courses = current_user.courses   
  end
end