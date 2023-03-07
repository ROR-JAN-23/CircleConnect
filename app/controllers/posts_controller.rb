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
  def destroy
    @post=Post.find(params[:id])
    byebug
    @comment=Comment.find_by(post_id: params[:id])
    while ! @comment==nil
      @comment=Comment.find_by(post_id: params[:id])
      Comment.destroy(@comment.id)
    end
    Post.destroy(@post.id)
  end
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
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