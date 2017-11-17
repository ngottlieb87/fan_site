class ArtistsController < ApplicationController
  def new
    @genre = Genre.find(params[:genre_id])
    @artist = Artist.new
  end

  def create
    @genre = Genre.find(params[:genre_id])
    @artist = @genre.artists.new(artist_params)
    if @artist.save
      flash[:notice] = "Artist successfully added!"
      redirect_to artist_path(@genre)
    else
      render :new
    end
  end

  def show
    @genre = Genre.find(params[:id])
    @artists = @genre.artists
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:alert] = "Artist Deleted"
    redirect_to artist_path(@artist.genre_id)
  end

  private
    def artist_params
      params.require(:artist).permit(:title, :genre_id)
    end
end
