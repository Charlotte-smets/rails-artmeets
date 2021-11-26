class Artist < ApplicationRecord
  belongs_to :user
  has_many :artworks
  has_many :matches
  acts_as_votable
  acts_as_voter
  has_many_attached :photos
  has_one_attached :photo
end
