class SongsController < ApplicationController

  def index
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

end