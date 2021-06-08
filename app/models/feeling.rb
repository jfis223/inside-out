class Feeling < ApplicationRecord
  belongs_to :user
  validates :title, :description, :category, :price, presence: true
  CATEGORIES = %w(positive negative empowering vengeful rare)
  validates :category, inclusion: { in: CATEGORIES}
  has_one_attached :image
end

