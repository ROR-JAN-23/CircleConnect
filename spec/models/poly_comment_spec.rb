require "rails_helper"

RSpec.describe PolyComment, type: :model do
  describe "relationships" do
    it { is_expected.to have_db_column(:commentable_id).of_type(:integer) }
    it { is_expected.to have_db_column(:commentable_type).of_type(:string) }
    it { is_expected.to belong_to(:commentable) }
    it { should belong_to :user }
  end
  before(:each) do
    @user = create(:user)
    @post = create(:post, user_id:@user.id)
    @poly_comment = create(:poly_comment, user_id: @user.id, commentable: @post)
  end
  it "is valid with valid attributes" do
    expect(@poly_comment).to be_valid
  end
  it "is valid with valid attributes" do
    @poly_comment.user_id=nil
    expect(@poly_comment).not_to be_valid
  end
  it "is valid with valid attributes" do
    @poly_comment.commentable = nil
    expect(@poly_comment).not_to be_valid
  end
end
