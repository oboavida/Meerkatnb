class Reservation < ApplicationRecord
  belongs_to :meerkat
  belongs_to :user
  has_one :review, foreign_key: :reservation_id
  validates :date_start, presence: true
  validate :date_start_cannot_be_in_the_past
  validate :date_start_before_date_end

  def date_start_cannot_be_in_the_past
    if date_start.present? && date_start < Date.today
      errors.add(:date_start, "Starting date can't be in the past.")
    end
  end

  def date_start_before_date_end
    if date_start.present? && date_end.present? && date_start > date_end
      errors.add(:date_end, "Starting date can't be after end date.")
    end
  end
end
