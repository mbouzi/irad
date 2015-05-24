class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to artist_path(artist)
    else
      redirect_to new_artist_path
    end
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    #POST edits to db
  end

  def destroy
    #delete artist record
  end

  def artist_params
    params.require(:artist).permit(:stage_name,
                                   :birth_name,
                                   :age,
                                   :description)
  end
end