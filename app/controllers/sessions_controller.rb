class SessionsController < ApplicationController
  def new

  end

  def create
    @hiker = Hiker.find_by_username(params[:username])

    if @hiker && @hiker.authenticate(params[:password]) 
    session[:user_id] = @hiker.id
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
