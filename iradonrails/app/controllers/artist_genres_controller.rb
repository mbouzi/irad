class ArtistGenresController < ApplicationController

  def edit
    @artist = Artist.find(params[:artist_id])
  end

  def update
  end

end