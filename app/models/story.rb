# frozen_string_literal: true

class Story < ApplicationRecord
  belongs_to :user
  has_one_attached :story, dependent: :destroy
  validates :user_id, presence: true
  validates :story, presence: true
end
