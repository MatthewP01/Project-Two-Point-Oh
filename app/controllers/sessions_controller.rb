class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    # byebug
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password]) # Shortcircuiting
      session[:user_id] = user.id # The magic for making us logged in
      # redirect_to user_path(user)
			redirect_to "/tanks/#{user.id}"
    else
			flash.now[:error] = "Invalid e-mail or password"
      render 'new'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to "/login"
  end
end
