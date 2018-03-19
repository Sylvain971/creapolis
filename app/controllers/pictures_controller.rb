class PicturesController < ApplicationController


  def new
  	@picture = Picture.new
    respond_to do |format|
      format.js
    end
  end

  def show
  	@picture = Picture.find(params[:id])

  end

  def create
  	@picture = Picture.new(pictures_params)
  	@picture.user = current_user
  	if params[:id] !="0"
  		@picture.artwork = Artwork.find(params[:id])
  		@picture.save
  		redirect_to @picture
  	else
  		@picture.artwork = current_user.artworks.last
	  	@picture.save
	  	redirect_to @picture
	  end
  end

  def upvote
    @picture = Picture.find(params[:id])
    @picture.liked_by current_user
    redirect_to @picture
  end
  def downvote
    @picture = Picture.find(params[:id])
    @picture.unliked_by current_user
    redirect_to @picture
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
