class ReviewsController < ApplicationController
  before_action :set_trail
  before_action :set_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.trail_id = @trail.id
    @review.user_id = current_user.id
    
    if @review.save
      redirect_to trail_path(@trail)
    else
      render 'new'
    end
  end

  def show

  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to trail_path(@trail)
    else
      render 'edit'
    end
  end
  
  def destroy
    @review.destroy
    redirect_to trail_path(@trail)
  end
end

private
  
def review_params
  params.require(:review).permit(:rating, :content)
end

def set_trail
  @trail = Trail.find(params[:trail_id])
end

def set_review
  @review = Review.find(params[:id])
end
