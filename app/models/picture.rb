class Picture < ApplicationRecord
	acts_as_votable

	belongs_to :artwork, optional: true
	belongs_to :user
	attr_accessor :img_url

	mount_uploader :img_url, ImagesUploader

end
