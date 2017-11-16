class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:notice] = "Album successfully added!"
      redirect_to albums_path
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums.order(:get_upvotes.size => :desc)
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to album_path(@album.artist_id)
  end

  def upvote
    @album= Album.find(params[:id])
    @album.upvote_by current_user
    @albums = Album.all
    redirect_to album_path(@album.artist_id)
  end

  def downvote
    @album = Album.find(params[:id])
    @album.downvote_by current_user
    @albums = Album.all
    redirect_to album_path(@album.artist_id)
  end

  private
    def album_params
      params.require(:album).permit(:title, :artist_id)
    end
end
