class ArtworksController < ApplicationController

  def index
  	@artworks = Artwork.all
    @artworks_js = @artworks.to_json(include: [:artists, :pictures])
  end

  def new
  	@artwork = Artwork.new
   # respond_to do |format|
   #   format.js
    #end
  end

  def create
  	@artwork = Artwork.new(artworks_params)
  	@artwork.lat = @artwork.lat.to_f
  	@artwork.long = @artwork.long.to_f
  	@artwork.artists << current_user
    @artwork.save
    redirect_to new_picture_path
  end

  def show
  	@artwork= Artwork.find(params[:id])
  end

  def show_small
    @artwork= Artwork.find(params[:id])
    @artworks = Artwork.all
  end

  def edit
  	@artwork = Artwork.find(params[:id])
  end

  def update
  	@artwork = Artwork.find(params[:id])
  	if artwork.update(artworks_params)
  		redirect_to @artwork
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@artwork = Artwork.find(params[:id])
  	@artwork.destroy
  	redirect_to artworks_path
  end

  def claim_artwork
    @artwork = Artwork.find(params[:id]) 
    current_user.created_artworks = @artwork
    current_user.status = "pending" 
  end

	private
	def artworks_params
		params.permit(:title, :description, :lat, :long, :artist)
	end

end
