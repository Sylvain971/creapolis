class User < ApplicationRecord
  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   include AlgoliaSearch

  has_many :pictures
  has_and_belongs_to_many :created_artworks, class_name: "Artwork"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]


  attr_accessor :profile_picture

  def remember_me
    (super == nil) ? '1' : super
  end

	mount_uploader :profile_picture, ImagesUploader

	algoliasearch do

		# list of attribute used to build an Algolia record
    attributes :pseudo, :artist, :country, :created_at
    # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    searchableAttributes ['pseudo', 'country']
    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.

  end


  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.firstname = auth.info.firstname   # assuming the user model has a name
      user.name = auth.info.name   # assuming the user model has a name
      user.profile_picture = auth.info.image # assuming the user model has an image
    end
end

end
