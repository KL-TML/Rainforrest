class Review < ApplicationRecord
  validates :comments, presence: true

  belongs_to :product
end
