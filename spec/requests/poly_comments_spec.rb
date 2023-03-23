# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PolyComments', type: :request do
  describe 'GET /poly_comments' do
    before(:each) do
      @user = create(:user)
      @post = create(:post, user_id: @user.id)
      @comment = create(:poly_comment, user_id: @user.id, commentable: @post)
    end
    it 'works! (now write some real specs)' do
      get new_poly_comment_path(@post)
      expect(response).to have_http_status(302)
    end
    it 'works! (now write some real specs)' do
      get poly_comments_path
      expect(response).to have_http_status(302)
    end
    it 'works! (now write some real specs)' do
      get reply_path(@comment)
      expect(response).to have_http_status(302)
    end
  end
end
