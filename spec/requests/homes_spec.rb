# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /' do
    it 'returns a successful response' do
      get root_path
      expect(response).to be_successful
    end
  end
end
