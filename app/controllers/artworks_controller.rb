class ArtworksController < ApplicationController
  def index
  	@artworks = Artwork.all
  end

  def show
  	@artworks = Artwork.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
