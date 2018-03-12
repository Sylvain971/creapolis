class ArtworksController < ApplicationController
  def index
  	@artworks = Artwork.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
