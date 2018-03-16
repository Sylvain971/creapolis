class ArtworksController < ApplicationController
  

  def index
  	@artworks = Artwork.all
    @artworks_js = @artworks.to_json(include: [:users, :pictures])
  end

  def new
  	@artwork = Artwork.new
  end

  def create
  	@artwork = Artwork.new(artworks_params)
      if lat = 0.0 || long = 0.0
        flash.now[:error] = "Merci d'activer votre geolocalisation"
        render 'new'

      else 
      	@artwork.lat = @artwork.lat.to_f
      	@artwork.long = @artwork.long.to_f
      	@artwork.users << current_user
    		if @artwork.save
    			redirect_to pictures_new_path, notice: 'Votre oeuvre a bien été ajoutée'
    		else
    			render 'new'
        end
  		end
  end

  def show
  	@artwork= Artwork.find(params[:id])
  end

  def show_small
    @artwork= Artwork.find(params[:id])
    @artwork_js = @artwork.to_json
    @artworks = Artwork.all
    @artworks_js = @artworks.to_json(include: [:users, :pictures])
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
		params.permit(:title, :description, :lat, :long, :artist)
	end

end
