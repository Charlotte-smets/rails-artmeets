class Gallerist < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many_attached :photos
end
