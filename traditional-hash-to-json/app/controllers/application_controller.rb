class ApplicationController < ActionController::API
  before_action :fetch_current_user

  attr_accessor :current_user

  private
  def fetch_current_user
    @current_user = User.find_by(id: params[:id])
  end
end
