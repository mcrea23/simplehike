class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find_by_id(:id)
  end
end
