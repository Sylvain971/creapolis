class Artwork < ApplicationRecord
	has_many :pictures
	has_and_belongs_to_many :artists

end
