class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   include AlgoliaSearch

  has_many :pictures
  has_and_belongs_to_many :artworks
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessor :profile_picture

  def remember_me
    (super == nil) ? '1' : super
  end

	mount_uploader :profile_picture, ImagesUploader

	algoliasearch do
    attribute :pseudo
  end

end
