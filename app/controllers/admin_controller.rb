class AdminController < ApplicationController
  def adminboard
  end

  def artworkmoderation
    @users = User.all
  end

  def newpicturesmoderation
    @users = User.all
  end

  def signaledpicturesmoderation
    @users = User.all
  end
end
