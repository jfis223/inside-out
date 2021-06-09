class Booking < ApplicationRecord
  belongs_to :feeling
  belongs_to :user
  validates :check_out, :check_in, :total_price, presence: true
  before_validation :set_total_price

  def duration
    check_out - check_in
  end

  def set_total_price
    self.total_price = (duration / 1.day) * feeling.price
  end
end
