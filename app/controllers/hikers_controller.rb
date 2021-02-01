class HikersController < ApplicationController

  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(user_params)
    if @hiker.save
      session[:user_id] = @hiker.id
      redirect_to parks_path
    else
      flash.now[:error] = @hiker.errors.full_messages
      render :new
    end
  end


  private

  def user_params
    params.require(:hiker).permit(:username, :password)
  end
end