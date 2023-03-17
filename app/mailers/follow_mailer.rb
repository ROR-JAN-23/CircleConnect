class FollowMailer < ApplicationMailer
  def new_follow_email
    @follow = params[:follow]
    @current_user = User.find(@follow.follower_id)
    @user = User.find(@follow.user_id)
    mail(to: @user.email, subject: 'New Follower')
  end
end
