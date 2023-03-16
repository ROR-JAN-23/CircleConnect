class FollowsController < ApplicationController
  def create
    return unless User.find(params[:format]) != current_user

    User.find(params[:format]).followers << current_user
  end

  def destroy
    User.find(params[:id]).followers.destroy(current_user.id)
  end
end
