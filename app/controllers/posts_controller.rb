class PostsController < ApplicationController
  before_action :authorize_user
  def new
    @post = Post.new
    # @post.images.build
  end

  def create
    @post = Post.new(post_params)
    
    # @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:description,:image,:user_id)
  end
  def authorize_user
    if !user_signed_in?
      redirect_to(new_user_session_path)
    end
  end
end