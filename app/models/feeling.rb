class Feeling < ApplicationRecord
  belongs_to :user
  validates :title, :description, :category, :price, presence: true
end
