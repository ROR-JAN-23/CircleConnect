require 'rails_helper'
require "models/concerns/commentable_spec"
RSpec.describe Post, type: :model do
  describe 'relationships' do
    it { should belong_to :user }
    it { should have_many :poly_comments }
    it_behaves_like "commentable"
    it { should have_many :complains}

  end
  before(:each) do
    @user = create(:user)
    @post = create(:post,user_id: @user.id)
  end
  it "is valid with valid attributes" do
    expect(@post).to be_valid
  end
  it 'is valid without description' do
    @post.description=nil
    expect(@post).to be_valid
  end
  it 'is not valid without image' do
    @post.image=nil
    expect(@post).not_to be_valid
  end
end
