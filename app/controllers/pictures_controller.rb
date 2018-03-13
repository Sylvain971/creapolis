class PicturesController < ApplicationController
  def new
  	@picture = Picture.new
  end

  def show
  	@picture = Picture.find(paramas[:id])
  end

  def create
  end

  def destroy
  end
end
