require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe 'relationships' do
    it{should belong_to :user}
  end
  before(:each) do
    @user=create(:user)
    @follow= create(:follow, user_id: @user.id)
  end
  
  it 'is valid with valid attributs' do
    expect(@follow).to be_valid
  end
  it 'is valid with follower' do
    @follow.follower_id=nil
    expect(@follow).not_to be_valid
  end
end
