class Review < ApplicationRecord
  belongs_to :feeling
  validates :content, :rating, presence: true
end
