class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def admin?
    !!current_user
  end

  def current_user
    session[:user]
  end

  helper_method :admin?, :current_user
end
