# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Stories', type: :request do
  describe 'GET    /stories(.:format)' do
    before(:each) do
      @user = create(:user)
      @story = create(:story, user_id: @user.id)
    end
    it 'works! (now write some real specs)' do
      get story_path(@story)
      expect(response).to have_http_status(200)
    end
  end
end
