class User < ApplicationRecord
  enum role: {
    admin: 'admin',
    user: 'user'
  }
  validates :user_name, uniqueness: true
  validates :user_name, presence: true
  has_many :poly_comments, as: :commentable, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  has_many :stories, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :follows, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable
end
