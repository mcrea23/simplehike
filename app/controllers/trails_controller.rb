class TrailsController < ApplicationController
  def show
    @trail = Trail.all
  end


end
