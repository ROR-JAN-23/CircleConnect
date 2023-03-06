class Comment < ApplicationRecord
  belongs_to :post
  # belongs_to :commentable, polymorphic: true
  # has_many :comment_replies, class_name: 'Comment', foreign_key: 'parent_comment_id'
  # belongs_to :parent_comment, class_name: 'Comment', optional: true
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: "parent_id"
  validates :user_id, presence: true
end
