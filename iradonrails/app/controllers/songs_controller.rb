class SongsController < ApplicationController

  def index
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
  end

  def edit
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