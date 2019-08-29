class Meerkat < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews, through: :reservations
  mount_uploader :photo, PhotoUploader
end
