class Story < ApplicationRecord
  belongs_to :user
  has_one_attached :story, dependent: :destroy
end
