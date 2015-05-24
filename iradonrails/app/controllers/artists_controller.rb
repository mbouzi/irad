class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    #POST create a new artist
    puts "THESE ARE THE ARTIST PARAMS: #{artist_params}"
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