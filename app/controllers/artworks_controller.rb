class ArtworksController < ApplicationController
  # def index
  #   @artworks = Artwork.all
  # end

  def new
    @artist = Artist.find(params[:artist_id])
    @artwork = Artwork.new
  end

  def show
    #  @artist = Artist.find(params[:artist_id])
    @gallerist = current_user.gallerists.first
    @favorite = Favorite.new
    @artwork = Artwork.find(params[:id])
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artist = Artist.find(params[:artist_id])
    @artwork.artist = @artist
    # @artwork.user = current_user
    if @artwork.save
      redirect_to dashboard_path
    else
      render "artists/show"
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artist_path(@artwork.artist)
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :date, :style)
  end
end
