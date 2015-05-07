class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(:id => session[:user_id]) if session[:user_id]
  end
  
  def user_subbed_to_goal?(goal)
    !!UserGoal.find_by(:user_id => current_user.id, :goal_id => goal.id)
  end

  helper_method :current_user, :logged_in?, :user_subbed_to_goal?
end
