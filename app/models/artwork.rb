class Artwork < ApplicationRecord
  belongs_to :artist
  # acts_as_favoritable
  acts_as_votable
end
