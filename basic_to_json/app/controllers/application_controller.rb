class ApplicationController < ActionController::API
  before_action :stub_current_user

  attr_accessor :current_user

  private
  def stub_current_user
    @current_user = User.first
  end
end
