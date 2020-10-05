class FollowsController < ApplicationController
  before_action :sign_in_required
  def create
    @follow = Follow.new(follow_id: current_user.id, follower_id: params[:follower_id])
    @follow.save
    redirect_to user_path(params[:follower_id])
  end

  def destroy
    @follow = Follow.find_by(follow_id: current_user.id, follower_id: params[:follower_id])
    @follow.destroy
    redirect_to user_path(params[:follower_id])
  end
end
