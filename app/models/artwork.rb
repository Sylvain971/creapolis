class Artwork < ApplicationRecord
	include AlgoliaSearch

	has_many :pictures
	has_and_belongs_to_many :users
	validates :lat, :long, presence: true

	algoliasearch do
    attribute :title, :style
  end

end
