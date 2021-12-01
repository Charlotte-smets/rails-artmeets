class ArtworksController < ApplicationController
  def index
    if params[:style].keys.present?
      @artworks = []
      params[:style].each_key do |style|
        @artworks << policy_scope(Artwork).where(style: style)
      end
      @artworks.flatten!
      # @artworks = Artwork.where(style: params[:query])
    else
      @artworks = policy_scope(Artwork)
    end
    @gallerist = current_user.gallerists.first
    @artworks_filtered = @artworks.reject { |art| @gallerist.liked?(art) || @gallerist.disliked?(art) }
    @artwork = @artworks_filtered.first
    # @artist = Artist.find(params[:artist_id])
  end

  def filter
    @artwork = Artwork.new
    authorize  @artwork
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @artwork = Artwork.new
  end

  def show
    # @artist = Artist.find(params[:artist_id])
    @gallerist = current_user.gallerists.first
    @artwork = Artwork.find(params[:id])
    authorize @artwork
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
    params.require(:artwork).permit(:title, :date, :style, :photo)
  end
end
