class User < ApplicationRecord
  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :pictures
  has_and_belongs_to_many :created_artworks, class_name: "Artwork"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  STATUS_OPTIONS = ['unvalidated', 'pending', 'validated']

  validates_inclusion_of :status, :in => STATUS_OPTIONS

  attr_accessor :profile_picture

  def remember_me
    (super == nil) ? '1' : super
  end

	mount_uploader :profile_picture, ImagesUploader

	include AlgoliaSearch

	algoliasearch do

		# list of attribute used to build an Algolia record
    attributes :pseudo, :artist, :city, :created_at, :id, :profile_picture
    add_attributes :user_picture, :artist_check
    # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    searchableAttributes ['pseudo']
    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
  	customRanking ['desc(artist)']

  end

  def user_picture
  	if self.profile_picture_url == nil
  		"https://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg"
  	else
  		self.profile_picture_url :secure => true, :crop => :fit, :width => 200, :height => 200
  	end
  end

  def artist_check
  	if self.artist == true
  		"https://res.cloudinary.com/creapolis/image/upload/v1521717762/checked.png"
  	else
  		nil
  	end
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
      user.firstname = auth.info.first_name   # assuming the user model has a name
      user.name = auth.info.last_name   # assuming the user model has a name
      user.profile_picture = auth.info.image # assuming the user model has an image
      
      ConfirmationMailer.sample_email(user).deliver!
    end
end

end
