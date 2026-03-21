class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user
  before_action :require_login
  add_flash_types :success, :warning

  def logged_in?
    !!current_user
  end

  def logout
    session[:user_id] = nil
    @current_user = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def not_authenticated; end

  private

  def require_login
    redirect_to login_path, warning: "ログインが必要です。" unless logged_in?
  end
end
