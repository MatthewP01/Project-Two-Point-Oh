class ApplicationController < ActionController::Base

  before_action :authorized
  helper_method :logged_in?, :current_user

  def logged_in?
  	!session[:user_id].nil?
  end


  def current_user
  	if logged_in?
  		@current_user = User.find(session[:user_id])
  	end
  end


  def authorized
  	redirect_to "/login" unless logged_in?
  end

end
