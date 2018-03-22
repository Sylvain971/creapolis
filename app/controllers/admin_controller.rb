class AdminController < ApplicationController
  def adminboard
  end

  def artwork_moderation
    @users = User.all
    @artworks = Artwork.all
  end

  def new_pictures_moderation
    @users = User.all
  end

  def signaled_pictures_moderation
    @users = User.all
  end
end
