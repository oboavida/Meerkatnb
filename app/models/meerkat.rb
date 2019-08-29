class Meerkat < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews, through: :reservations
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :specialty, presence: true
  validates :age, presence: true, numericality: { greater_than: 1, less_than_or_equal_to: 17, only_integer: true }
  validates :price, presence: true, numericality: { greater_than: 1, only_integer: true }
  validates :location, presence: true, allow_blank: false
  validates :description, presence: true, length: { maximum: 200 }, allow_blank: false


end
