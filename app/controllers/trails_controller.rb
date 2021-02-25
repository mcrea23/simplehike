class TrailsController < ApplicationController
  def show
    @trail = Trail.find_by_id(params[:id])
    @reviews = Review.where(:trail_id == @trail.id)
    @user_reviewed = User.find_by(params[:id])
  end

  def index 
    @trail = Trail.all
  end

  def longest
    @trail = Trail.longest 
    render :show 
  end

  def edit
  end

end
