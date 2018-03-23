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
    @pending_users = @users.where(status: :"pending").all
    @validated_users = @users.where({status: "validated", artist: true}).all
  end

  def artists_validated
    @user = User.find(params[:id])
    @user.update_attributes(status: :"validated", artist: true)
    @user.save
    redirect_to artists_moderation_path
  end
end
