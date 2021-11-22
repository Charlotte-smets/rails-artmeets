class Artwork < ApplicationRecord
  belongs_to :artist
  has_many :likes
end
