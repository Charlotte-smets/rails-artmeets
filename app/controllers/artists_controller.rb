class ArtistsController < ApplicationController
  def index
    @artists = policy_scope(Artist)
  end

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
    @artwork = Artwork.new
    authorize @artwork
  end

  def new
    @artist = Artist.new
    authorize @artist
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

  # def like
  #   artwork = Artwork.find(params[:artwork])
  #   @gallerist = Gallerist.find(params[:id])
  #   artist = artwork.artist
  #   artwork.liked_by @gallerist
  #   if artist.liked? @gallerist
  #     redirect_to matches_path
  #   else
  #     redirect_to artworks_path
  #   end
  # end

  # def dislike
  #   artwork = Artwork.find(params[:artwork])
  #   @gallerist = Gallerist.find(params[:id])
  #   artwork.disliked_by @gallerist
  #   redirect_to artworks_path
  # end

  private

  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :artist_name, :description, :address)
  end
end
