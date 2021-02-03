class TrailsController < ApplicationController
  def show
    @trail = Trail.find_by_id(params[:id])
  end

  def index 
    @trail = Trail.all
  end


end
