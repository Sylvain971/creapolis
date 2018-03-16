class Artwork < ApplicationRecord
	has_many :pictures
	has_and_belongs_to_many :users
	validates :lat, :long, presence: true
end
