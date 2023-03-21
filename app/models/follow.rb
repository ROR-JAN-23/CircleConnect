class Follow < ApplicationRecord
  belongs_to :user
  validates :follower_id, presence: true
end
