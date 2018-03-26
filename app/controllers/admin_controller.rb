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
    @pictures_not_validated = Picture.all.select{|picture| picture.moderated == false}
  end

  def signaled_pictures_moderation
    @signaled_pictures = Picture.all.select{|picture| picture.signaled == true}
  end

  def artists_moderation
    @pending_users = User.all.select{|user| user.status == "pending"}
    @validated_users = User.all.select{|user| user.status == "validated"}
  end

  def validates_artist
    @user = User.find(params[:id])
    @user.status = "validated"
    @user.artist = true
    @user.save
    redirect_to artists_moderation_path
  end

end
