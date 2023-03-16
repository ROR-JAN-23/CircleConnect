class User < ApplicationRecord
  enum role: {
    admin: 'admin',
    user: 'user'
  }
  has_many :poly_comments, as: :commentable, dependent: :destroy
  has_one_attached :avatar
  has_many :posts, dependent: :destroy
  has_many :received_follows, foreign_key: :followed_user_id, class_name: 'Follow'
  has_many :followers, through: :received_follows, source: :follower
  has_many :given_follows, foreign_key: :follower_id, class_name: 'Follow'
  validates :user_name, uniqueness: true
  validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable
end
