class Meerkat < ApplicationRecord
  belongs_to :user
  has_many :reservations, foreign_key: :meerkat_id
  has_many :reviews, through: :reservations
  mount_uploader :photo, PhotoUploader
end
