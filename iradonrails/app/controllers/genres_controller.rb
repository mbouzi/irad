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
    genre = Genre.create(genre_params)
    if genre.save
      redirect_to genre_path(genre)
    else
      redirect_to new_genre_path
    end
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