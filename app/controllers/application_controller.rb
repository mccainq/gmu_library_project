class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  # Callback that intercepts all calls to this action
  #   checking to see if there is a
  before_action :authorize

  protected

  #
  def authorize
    unless current_user
      redirect_to login_path, alert: "Please log in."
    end
  end
end
