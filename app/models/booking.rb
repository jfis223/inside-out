class Booking < ApplicationRecord
  belongs_to :feeling
  belongs_to :user
  validates :check_out, :check_in, :total_price, presence: true
end
