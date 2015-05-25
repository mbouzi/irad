class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def genre_params
    params.require(:genres).permit(
      :name,
      :description)
  end

end