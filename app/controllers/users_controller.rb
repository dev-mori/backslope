class UsersController < ApplicationController
  before_action :sign_in_required
  def show
    @tweets = Tweet.where(user_id: params[:id])
    @user = User.find_by(id: params[:id])
  end
end
