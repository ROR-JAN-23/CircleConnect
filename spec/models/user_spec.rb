require "rails_helper"
require "models/concerns/commentable_spec"
RSpec.describe User, type: :model do
  describe "relationships" do
    it { should have_many :posts }
    it { should have_many :poly_comments }
    it { should have_many :follows }
    it_behaves_like "commentable"
    it { should have_many :complains }
  end
  before(:each) do
    @user = create(:user)
  end
  it "is valid with valid attributes" do
    expect(@user).to be_valid
  end

  it "is valid without a first_name" do
    @user.first_name = "mytest2"
    expect(@user).to be_valid
  end

  it "is valid without a last_name" do
    @user.last_name = "mytest2"
    expect(@user).to be_valid
  end

  it "is not valid without a user_name" do
    @user.user_name = nil
    expect(@user).not_to be_valid
  end

  it "is not valid without a email" do
    @user.email = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a user_name" do
    @user.password = nil
    expect(subject).not_to be_valid
  end
end
