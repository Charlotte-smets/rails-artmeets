class Artwork < ApplicationRecord
  belongs_to :artist
  acts_as_favoritable
  has_many_attached :photos
end
