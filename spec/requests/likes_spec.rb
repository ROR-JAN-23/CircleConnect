# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Likes', type: :request do
  describe 'GET /likes' do
    before(:each) do
      @user = create(:user)
      @post = create(:post, user_id: @user.id)
      @like = create(:like, post_id: @post.id, user_id: @user.id)
    end
    it 'works! (now write some real specs)' do
      put like_path(@post)
      expect(response).to have_http_status(302)
    end
    it 'works! (now write some real specs)' do
      get destroy_like_path(@like)
      expect(response).to have_http_status(302)
    end
  end
end
