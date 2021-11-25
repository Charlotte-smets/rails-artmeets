class Artwork < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo
  acts_as_favoritable
end
