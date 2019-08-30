class Meerkat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :specialty, presence: true
  validates :age, presence: true, numericality: { greater_than: 1, less_than_or_equal_to: 17, only_integer: true }
  validates :price, presence: true, numericality: { greater_than: 1, less_than_or_equal_to: 999, only_integer: true }
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: [:name, :specialty],
                  using: {
                      tsearch: { prefix: true }
                  }
end
