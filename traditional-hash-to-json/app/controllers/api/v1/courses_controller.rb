class Api::V1::CoursesController < ApplicationController
  def index
    course_hash_arr = current_user.courses.map(&:attributes)
    current_user.courses.each_with_index do |course, index|
      topic_hash_arr = course.topics.map(&:attributes)
      course.topics.each_with_index do |topic, index|
        topic_hash_arr[index]["is_completed"] = topic.is_completed?(current_user)
        topic_hash_arr[index]["assignments"] = topic.assignments if topic.is_completed?(current_user)
      end
      course_hash_arr[index]["topics"] = topic_hash_arr
    end
    render json: course_hash_arr  
  end
end