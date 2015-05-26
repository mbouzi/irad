class AlbumsController < ApplicationController

  def edit
    @album = Album.find(params[:id])
  end

end