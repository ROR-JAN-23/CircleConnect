class User < ApplicationRecord
  has_many :posts, class_name: "Post"
  # has_many :comments, as: :commentable
  # has_one_atteched :profile_image
  # has_one_attached :avatar
  # has_many_attached :post_images
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :user_name, uniqueness: true
  validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable
end
