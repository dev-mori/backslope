class UsersController < ApplicationController
  before_action :sign_in_required
  def show
    @user = User.find_by(id: params[:id])
    @current_user = current_user
    @tweets = Tweet.where(user_id: params[:id])
    @tweets_count = @tweets.count
    @follow_count = Follow.where(follow_id: params[:id]).count
    @follower_count = Follow.where(follower_id: params[:id]).count
  end
end
