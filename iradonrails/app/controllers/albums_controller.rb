class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def create
    artist = Artist.find(params[:artist_id])
    album = Album.new(album_params)
    album.artist = artist

    if album.save
      redirect_to artist_album_path(artist, album)
    else
      redirect_to new_artist_album_path(artist, album)
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(
      :title,
      :release_year,
      :description
      )
  end
end