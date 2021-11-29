class GalleristsController < ApplicationController
  def index
    @gallerists = policy_scope(Gallerist)
  end

  def show
    @gallerist = Gallerist.find(params[:id])
    authorize @gallerist
  end

  def new
    @gallerist = Gallerist.new
    authorize @gallerist
  end

  def create
    @gallerist = Gallerist.new(gallerist_params)
    authorize @gallerist
    @gallerist.user = current_user
    @gallerist.save
    redirect_to gallerist_path(@gallerist)
  end

  def like
    artwork = Artwork.find(params[:artwork])
    @gallerist = Gallerist.find(params[:id])
    authorize @gallerist
    artist = artwork.artist
    artwork.liked_by @gallerist
    if artist.liked? @gallerist
      @match = Match.new(artist_id: artist.id, gallerist_id: @gallerist.id)
      @match.save
      redirect_to match_path(@match)
    else
      redirect_to artworks_path
    end
  end

  def dislike
    artwork = Artwork.find(params[:artwork])
    @gallerist = Gallerist.find(params[:id])
    authorize @gallerist
    artwork.disliked_by @gallerist
    redirect_to artworks_path
  end

  private

  def gallerist_params
    params.require(:gallerist).permit(:first_name, :last_name, :rating, :address, :description, :name, photos: [])
  end

  # def match_params
  #   params.require(:match)
  # end
end
