class UsersController < ApplicationController
	before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @user_js = @user.to_json
    
    @up = @user.pictures
    @up_js = @up.to_json(include: { artwork: { only: [:lat, :long]}})
    
    @ua = @user.created_artworks
    @ua_js = @user.created_artworks.to_json
  end
end
