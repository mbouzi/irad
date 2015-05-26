class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    album = Album.find(params[:album_id])
    song = album.songs.build(song_params)
    song.artist = album.artist

    if song.save
      redirect_to artist_album_song_path(album.artist, album, song)
    else
      redirect_to new_artist_album_song_path(album.artist, album, song)
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update

  end

  def destroy
  end

  def song_params
    params.require(:song).permit(
      :title,
      :lyrics
      )
  end

end