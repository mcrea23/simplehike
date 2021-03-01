class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find_by_id(params[:id])
    @trail = Trail.find_by(params[:park_id])
   end

   def search
    @parks = Park.where(:name => params[:park_name])
    if !@parks.empty?
      @parks
    else
      @parks = Park.where(:location => params[:park_location])
    end
  end
end
