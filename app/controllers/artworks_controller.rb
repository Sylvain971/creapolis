class ArtworksController < ApplicationController
  
  def index
  	@artworks = Artwork.all
  end

  def new
  	@artwork = Artwork.new
  end

  def create
  	@artwork = Artwork.new(artworks_params)
  		if @artwork.save
  			redirect_to pictures_new_path, notice: 'Votre oeuvre a bien été ajoutée'
  		else
  			render 'new'
  		end
  end

  def show
  	@artwork= Artwork.find(params[:id])
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

	private
	def artworks_params
		params.permit(:title, :description, :lat, :long)
	end

end