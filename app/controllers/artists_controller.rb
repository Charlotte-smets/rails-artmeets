class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @artwork = Artwork.new
  end

  def new
    @artist = Artist.new
  end

  # check if the render :new is essential in this case
  def create
    @artist = Artist.new(artist_params)
    @artist.user = current_user
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :artist_name, :description, :address)
  end
end
