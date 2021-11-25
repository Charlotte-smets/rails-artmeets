class Artwork < ApplicationRecord
  belongs_to :artist
  acts_as_votable
  has_one_attached :photo
end
