class PicturesController < ApplicationController
  def new
  	@picture = Picture.new
  end

  def show
  	@picture = Picture.find(params[:id])

  end

  def create
  	@picture = Picture.new(pictures_params)
  	if
  		@picture.user = current_user
  		@picture.artwork = current_user.artworks.last
	  	@picture.save
	  	redirect_to @picture
	  else
	  	render 'new'
	  end
  end

  def destroy
  	@artwork = Artwork.find(params[:id])
  	@artwork.destroy
  	redirect_to pictures_path
  end

  private
  def pictures_params
  	params.permit(:img_url)
  end
end
