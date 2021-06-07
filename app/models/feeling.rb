class Feeling < ApplicationRecord
  belongs_to :user
  validates :title, :description, :image, :category, :price, presence: true
end
