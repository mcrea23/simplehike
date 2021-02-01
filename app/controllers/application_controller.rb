class ApplicationController < ActionController::Base

  helper_method :user_signed_in?, :current_user
  def user_signed_in?
    !!session[:user_id]
  end

  def current_user
    Hiker.find_by_id(session[:user_id]) if user_signed_in?
  end

  def login_user
    sessions[:user_id] = @hiker.id
  end
end
