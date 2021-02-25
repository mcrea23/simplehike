class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find_by_id(params[:id])
    @trail = Trail.find_by(params[:park_id])
   end

   def search
    if @park = Park.where(:name => params[:park_name]).first
    @park
    else 
      @park = Park.where(:location => params[:park_name]).first
    end
  end
end
