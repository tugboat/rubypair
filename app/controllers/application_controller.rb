class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  private
  
  def current_user
    @current_user ||= User.find(:github_login => session[:github_login]) if session[:github_login]
  end
end
