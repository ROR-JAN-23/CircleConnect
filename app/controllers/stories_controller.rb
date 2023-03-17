class StoriesController < ApplicationController
  def index
    @story = Story.find(params[:format])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    return unless @story.save

    redirect_to root_path, notice: 'Story was successfully created.'
  end

  def destroy; end

  def story_params
    params.require(:story).permit(:story, :user_id)
  end
end
