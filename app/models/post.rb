class Post < ApplicationRecord
  # has_many :images, as: :imageable, dependent: :destroy
  belongs_to :user
  has_many :comments
  # has_many :comments, as: :commentable
  mount_uploader :image, ImageUploader
  validates :user_id, presence: true
  validates :image, presence: true
end
