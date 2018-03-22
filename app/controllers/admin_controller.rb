class AdminController < ApplicationController
  def adminboard
  end

  def artwork_moderation
    @users = User.all
    @artworks = Artwork.all
  end

  def artwork_validated
    @artwork= Artwork.find(params[:id])
    @artwork.update_attributes(moderated: true)
    @artwork.save
    redirect_to art_moderation_path
  end

  def new_pictures_moderation
    @users = User.all
  end

  def signaled_pictures_moderation
    @users = User.all
  end
end
