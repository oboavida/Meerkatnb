class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reservation
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
end
