require 'rails_helper'

RSpec.describe Complain, type: :model do
  describe 'relationships' do
    it{should belong_to :user}
    it{should belong_to :post}
  end
  before(:each) do
    @user = create(:user)
    @post = create(:post,user_id: @user.id)
    @complain = create(:complain, user_id: @user.id, post_id: @post.id)
  end

  it 'is valid with valid attributes' do
    expect(@complain).to be_valid
  end
  it 'is valid with valid attributes' do
    @complain.post_id=nil
    expect(@complain).not_to be_valid
  end
  it 'is valid with valid attributes' do
    @complain.user_id=nil
    expect(@complain).not_to be_valid
  end
end
