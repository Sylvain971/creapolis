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

  def artists_moderation
    @users = User.all
    @pending_users = User.where(:status == "pending")
  end

  def artists_validated
    @user = User.find(params[:id])
    @user.update_attributes(status: "validated")
    @user.artist == true
    @artist.save
    redirect_to artist_moderation_path
  end
end
