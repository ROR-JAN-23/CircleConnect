class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
  validates :user_id, presence: true
  validates :image, presence: true
  has_many :likes
  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end
end
