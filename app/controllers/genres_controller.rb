class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = "Genre successfully added!"
      redirect_to genres_path
    else
      render :new
    end
  end

  def show
    @genre = Genre.find(params[:id])
  end

private
  def genre_params
    params.require(:genre).permit(:title)
  end
end
