class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :pictures
  has_and_belongs_to_many :artworks
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def remember_me
     (super == nil) ? '1' : super
   end

  attr_accessor :profile_picture

	mount_uploader :profile_picture, ImagesUploader

end
