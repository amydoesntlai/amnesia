class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticated?
    !current_user.nil?
  end

  def authenticate_user!
    if !authenticated?
      redirect_to sessions_path
    end
  end

  helper_method :current_user, :authenticated?, :authenticate_user!

end
