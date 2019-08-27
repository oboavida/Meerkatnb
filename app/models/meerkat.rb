class Meerkat < ApplicationRecord
  belongs_to :user
  has_many :reviews
  mount_uploader :photo, PhotoUploader
end
