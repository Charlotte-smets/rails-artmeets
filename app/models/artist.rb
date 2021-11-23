class Artist < ApplicationRecord
  belongs_to :user
  has_many :artworks
  has_many :matches
  acts_as_favoritor
end
