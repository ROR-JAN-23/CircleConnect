require 'rails_helper'

shared_examples "commentable" do
  it { is_expected.to have_many(:poly_comments) }
end