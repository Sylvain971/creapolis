class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artworks =  Artwork.all
    @user_pictures = @user.pictures
    @user_pictures_js = @user_pictures.to_json(include: :artwork)
  end

end
