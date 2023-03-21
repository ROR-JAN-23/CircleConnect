require "rails_helper"

RSpec.describe Like, type: :model do
  describe "relationships" do
    it { should belong_to :user }
    it { should belong_to :post }
  end
  before(:each) do
    @user = create(:user)
    @post = create(:post, user_id: @user.id)
    @like = create(:like, post_id: @post.id, user_id: @user.id)
  end

  it "is valid with valid attributes" do
    expect(@like).to be_valid
  end
  it "is valid with valid attributes" do
    @like.post_id = nil
    expect(@like).not_to be_valid
  end
  it "is valid with valid attributes" do
    @like.user_id = nil
    expect(@like).not_to be_valid
  end
end
