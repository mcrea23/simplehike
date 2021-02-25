class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @trail = Trail.find_by_id(params[:trail_id])
  end

  def create
    @review = Review.new(review_params)
    @user = current_user
    @user_reviewed = User.find_by(params[:id])
    @trail = @review.trail_id
    
    if @review.save
      redirect_to review_path(@review)
    else 
      redirect_to new_trail_review_url(@trail), notice: "Review cannot be blank."
    end
  end

  def show
    @review = Review.find(params[:id])
    @user_reviewed = User.find_by(params[:id])
    @trail = @review.trail_id
  end

  def edit
    @review = Review.find(params[:id])
  end

  def index
    @trail = Trail.find(params[:trail_id])
    @reviews = Review.where(:trail_id == @trail)
    @user_reviewed = User.find_by(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review changed"
      redirect_to review_path(@review)
    else
      flash[:notice] = @comment.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    @review = Review.find(params[:id])
    @trail = Trail.find_by_id(@review.trail_id)
    @review.destroy
    redirect_to trail_reviews_path(@trail)
  end
end

private
  
def review_params
  params.require(:review).permit(:content, :title, :trail_id, :user_id)
end

