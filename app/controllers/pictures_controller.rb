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
      flash[:notice] = 'Votre photo a été ajoutée à votre carte !'
  		redirect_to @picture
  	else
	  	@picture.save
	  	redirect_to new_artwork_path
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

  def moderate 
    @picture = Picture.find(params[:id])
    @picture.moderated = true
    @picture.save
    redirect_to new_pic_moderation_path
  end

  def unsignal
    @picture = Picture.find(params[:id])
    @picture.signaled = false
    @picture.save
    redirect_to signaled_pic_moderation_path
  end

  private
  def pictures_params
  	params.permit(:img_url)
  end
end
