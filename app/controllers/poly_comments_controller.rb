# frozen_string_literal: true

class PolyCommentsController < ApplicationController
  before_action :set_polycomment, only: %i[show destroy]
  before_action :authorize_user

  def index; end

  def new
    @polycomment = PolyComment.new
  end

  def create
    @polycomment = PolyComment.new(comment_params)
    respond_to do |format|
      if @polycomment.save
        format.html { redirect_to root_path, notice: 'Comment was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @polycomment.destroy

    respond_to do |format|
      format.html { redirect_to poly_comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_polycomment
    @polycomment = PolyComment.find(params[:id])
  end

  def comment_params
    params.require(:poly_comment).permit(:content, :user_id, :commentable_id, :commentable_type)
  end

  def authorize_user
    return if user_signed_in?

    redirect_to(new_user_session_path)
  end
end
