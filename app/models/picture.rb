class Picture < ApplicationRecord
	belongs_to :artwork
	has_and_belongs_to_many :artists
end
