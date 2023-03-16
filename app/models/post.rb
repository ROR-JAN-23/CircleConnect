class Post < ApplicationRecord
  has_many :poly_comments, as: :commentable, dependent: :destroy
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :user_id, presence: true
  validates :image, presence: true
  has_many :likes, dependent: :destroy
  has_many :complains, dependent: :destroy
  def liked?(user)
    likes.find { |like| like.user_id == user.id }
  end
end
