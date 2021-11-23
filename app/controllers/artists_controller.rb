class ArtistsController < ApplicationController
  before_action :set_artist, only: [show]

  def index
    @artists = Artist.all
  end

  def show
    @artwork = Artwork.new
  end

  def new
    @artist = Artist.new
  end

  # check if the render :new is essential in this case
  def create
    @artist = Artist.new(artist_params)
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

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
