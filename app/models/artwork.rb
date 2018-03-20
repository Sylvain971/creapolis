class Artwork < ApplicationRecord
	include AlgoliaSearch

	has_many :pictures
	has_and_belongs_to_many :artists, class_name: "User"
	validates :lat, :long, presence: true

	algoliasearch do

		# list of attribute used to build an Algolia record
    attributes :title, :style, :created_at

    # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    searchableAttributes ['title', 'style']

    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.

	end

end
