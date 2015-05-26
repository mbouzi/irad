class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

end