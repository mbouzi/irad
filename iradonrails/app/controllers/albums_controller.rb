class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(
      :artist_id,
      :title,
      :release_year,
      :description
      )
  end
end