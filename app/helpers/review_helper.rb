module ReviewHelper
  
  def find_trail_by_id(trail_id)
    @trail = Trail.find(params[:trail_id])
  end
  
  def user_reviewed(user)
    User.find_by(params[:id])
  end
end
