class RoutesController < ApplicationController
  def index
  	@routes = Route.all
  end

  def show
  	@route = Route.find(params[:id])
  	@route_artworks = @route.artworks
    @route_artworks_js = @route_artworks.to_json#(include: { artwork: { only: [:lat, :long]}})
  end
end
