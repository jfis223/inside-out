class Booking < ApplicationRecord
  belongs_to :feeling
  belongs_to :user
end
