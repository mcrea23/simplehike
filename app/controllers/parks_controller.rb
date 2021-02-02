class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find_by_id(params[:id])
    @trail = Trail.find_by(params[:park_id])
   end
end
