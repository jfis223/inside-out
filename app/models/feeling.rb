class Feeling < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  validates :title, :description, :category, :price, presence: true
  CATEGORIES = %w[positive negative empowering vengeful rare]
  CATEGORIES_FILTER = CATEGORIES.map do |category|
                        [category.capitalize, category]
                      end
  validates :category, inclusion: { in: CATEGORIES }
  has_one_attached :image
  has_many :reviews

  pg_search_scope :search_by_title_and_category_and_description,
                  against: %i[title description category],
                  using: {
                    tsearch: { prefix: true }
                  }
end
