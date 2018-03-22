class PicturesController < ApplicationController

  def new
  	@picture = Picture.new
    #respond_to do |format|
    #  format.js
    #end
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
  		@picture.artwork = current_user.created_artworks.last
	  	@picture.save
      current_user.created_artworks.last.artists.delete(current_user)
	  	redirect_to @picture
	  end
  end

  def upvote
    @picture = Picture.find(params[:id])
    @picture.liked_by current_user
    redirect_to request.referrer
  end

  def downvote
    @picture = Picture.find(params[:id])
    @picture.unliked_by current_user
    redirect_to request.referrer
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.user.id = current_user.id
      if @picture.artwork.pictures.count == 1
        @picture.artwork.destroy
        flash[:notice] = 'Oeuvre supprimée !'
        redirect_to root_path
      else
        @picture.destroy
        flash[:notice] = 'Image supprimée !'
        redirect_to root_path
      end
    else
      flash[:danger] = 'Accès refusé !'
      redirect_to picture_path
    end
  end

  def signal
    @picture = Picture.find(params[:id])
    @picture.signaled = true
    @picture.save
    flash[:notice] = 'Votre signalement est pris en compte !'
    redirect_to @picture
  end

  private
  def pictures_params
  	params.permit(:img_url)
  end
end
