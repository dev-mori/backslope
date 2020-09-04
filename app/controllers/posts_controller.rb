class PostsController < ApplicationController
  before_action :authenticate, only: [:new, :create]

  def new
  end

  def create
    # @post = Post.new(...
    #                  user_id: @current_user.id)
  end
end
