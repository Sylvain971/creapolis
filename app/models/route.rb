class Route < ApplicationRecord
  has_and_belongs_to_many :artworks
end
