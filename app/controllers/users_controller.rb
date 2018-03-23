class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @up = @user.pictures
    @up_js = @up.to_json(include: { artwork: { only: [:lat, :long]}})
    
   #  if @user.artist
	  #   @uartworks = @user.created_artworks
	  #   @uartworks_js = @uartworks.to_json
  	# end
  end
end
