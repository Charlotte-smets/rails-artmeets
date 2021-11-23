class Gallerist < ApplicationRecord
  belongs_to :user
  has_many :matches
  acts_as_favoritable
  acts_as_favoritor
end
