class CommentsController < ApplicationController
  before_action :authorize_user
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @comments = Comment.all
  end
  def show
  end
  def new
    @comment = Comment.new
    # @post = Post.find(params[:post_id])
  end
  def edit
  end
  def create
    post_id = params[:post_id]
    user_id =Post.find(params[:post_id]).user_id
    @user=User.find(user_id)
    if params[:comment][:comment_id]==nil
      @comment=User.find(user_id).posts.find(post_id).comments.create(comment: params[:comment][:comment], user_id: current_user.id, post_id: params[:post_id])
    else
    @comment=User.find(user_id).posts.find(post_id).comments.find(params[:comment][:comment_id]).replies.create(user_id: params[:comment][:user_id],post_id: params[:post_id],comment: params[:comment][:comment])
  end
    respond_to do |format|
      if @comment.save
        format.html { redirect_to '', notice: 'Comment was successfully created.' } # changed the redirect to @post
      end
    end
  end
  def destroy
    @comment.destroy
    redirect_to comments_url
  end
  private
  def set_post
    @comment=Comment.find(params[:id])
  end

  def authorize_user
    if !user_signed_in?
      redirect_to(new_user_session_path)
    end
  end
end