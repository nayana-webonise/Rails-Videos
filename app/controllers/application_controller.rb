class ApplicationController < ActionController::Base
  protect_from_forgery
  private

  def current_user
    @current_user ||= AuthUser.find(session[:auth_user_id]) if session[:auth_user_id]
  end

  helper_method :current_user
end

