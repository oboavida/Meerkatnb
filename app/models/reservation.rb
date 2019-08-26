class Reservation < ApplicationRecord
  belongs_to :meerkat
  belongs_to :user
end
