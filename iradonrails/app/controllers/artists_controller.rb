class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def create
    #POST create a new artist
  end

  def new
    #GET a new artist form for user
  end

  def edit
    #GET an artist edit form for user
  end

  def update
    #POST edits to db
  end

  def destroy
    #delete artist record
  end
end