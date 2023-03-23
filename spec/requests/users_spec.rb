# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users(.:format) ' do
    it 'returns a successful response' do
      @user = create(:user)
      get users_path(@user.user_name)
      expect(response.body).to render_template(:show)
    end
  end

  describe 'GET /history(.:format)' do
    it 'returns a successful response' do
      get history_path
      expect(response.status).to eq(200)
    end
  end
end
