class User < ApplicationRecord
  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :pictures
  has_and_belongs_to_many :created_artworks, class_name: "Artwork"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :profile_picture

  def remember_me
    (super == nil) ? '1' : super
  end

	mount_uploader :profile_picture, ImagesUploader

	include AlgoliaSearch

	algoliasearch do

		# list of attribute used to build an Algolia record
    attributes :pseudo, :artist, :city, :created_at
    add_attribute :user_picture
    # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    searchableAttributes ['pseudo']
    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
  end

  def user_picture
  	self.profile_picture_url
  end

end
