class ArtworksController < ApplicationController
	before_action :authenticate_user!
  attr_accessor :style, :artist

  def index
  	@artworks = Artwork.all
    @artworks_js = @artworks.to_json(include: [:artists, :pictures])
  end

  def new
  	@artwork = Artwork.new
  end

  def create
  	@artwork = Artwork.new(artworks_params)
  	@artwork.lat = @artwork.lat.to_f
  	@artwork.long = @artwork.long.to_f
  	@artwork.artists << current_user
    @artwork.save

    @last_picture = current_user.pictures.last
    @last_picture.artwork = @artwork
    @last_picture.save

    flash[:notice] = 'Félicitations, vous venez de créer une oeuvre !'

    redirect_to @artwork

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
  	if @artwork.update(artworks_params)
      if !params[:artists].nil?
      @artwork.artists << User.find(params[:artists])
  		redirect_to @artwork
      end
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@artwork = Artwork.find(params[:id])
  	@artwork.destroy
  	if current_user.admin = true
			redirect_to art_moderation_path
		else
			redirect_to artworks_path
		end
  end

  def claim_artwork
    @artwork = Artwork.find(params[:id])
    current_user.created_artworks << @artwork
    if !current_user.artist
      current_user.status = "pending"
      current_user.save
      flash[:notice] = 'Cette oeuvre apparaîtra sur votre profil après modération !'
    else
      flash[:notice] = 'Cette oeuvre a été ajoutée à votre profil !'
    end
    redirect_to @artwork
  end

	private
	def artworks_params
		params.permit(:title, :description, :lat, :long, :artist, :style)
	end

end
