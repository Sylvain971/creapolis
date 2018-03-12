class Picture < ApplicationRecord
	belongs_to :artwork
	belongs_to :postable, polymorphic: true
end
