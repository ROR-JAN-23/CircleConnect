# frozen_string_literal: true

class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follower_id: current_user.id, user_id: params[:id])
    return unless @follow.save

    FollowMailer.with(follow: @follow).new_follow_email.deliver_later
    redirect_to root_path, notice: 'Followed successfully.'
  end

  def destroy
    @user = User.find(params[:id])
    return unless @user.follows.find_by(follower_id: current_user.id).destroy

    redirect_to root_path, notice: 'Unfollowed successfully.'
  end
end
