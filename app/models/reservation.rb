class Reservation < ApplicationRecord
  belongs_to :meerkat
  belongs_to :user
  has_one :review, foreign_key: :reservation_id
end
