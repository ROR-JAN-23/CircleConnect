# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET    /posts/new(.:format)' do
    it 'returns a successful response' do
      get new_post_path
      expect(response.status).to eq(302)
    end
  end

  describe 'GET #show' do
    before(:each) do
      @user = create(:user)
      @post = create(:post, user_id: @user.id)
    end
    it 'returns a successful response' do
      get post_path(@post)
      expect(response.status).to eq(302)
    end
  end
end
