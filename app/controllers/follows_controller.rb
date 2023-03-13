class FollowsController < ApplicationController
  def create
    if User.find(params[:format])!=current_user
    User.find(params[:format]).followers<<current_user
    end
  end
  def destroy
    User.find(params[:id]).followers.destroy(current_user.id)
  end
end