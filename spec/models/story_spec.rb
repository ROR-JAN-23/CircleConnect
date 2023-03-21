require 'rails_helper'

RSpec.describe Story, type: :model do
  describe 'relationships' do
    it{should belong_to :user}
  end
  context "with a valid file" do
    before(:each) do
      @story = create(:story)
    end

    it "is attached" do
      @story.story.attach(
      io: fixture_file_upload("#{Rails.root}/spec/files/img1.png"),
      filename: 'img1.png',
      content_type: 'application/png'
      )
      expect(@story.story).to be_attached
    end 
  end
end