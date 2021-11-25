class GalleristsController < ApplicationController
  def index
    @gallerists = Gallerist.all
  end

  def show
    @gallerist = Gallerist.find(params[:id])
  end

  def new
    @gallerist = Gallerist.new
  end

  def create
    @gallerist = Gallerist.new(gallerist_params)
    @gallerist.user = current_user
    @gallerist.save
    redirect_to gallerist_path(@gallerist)
  end

  def like
    artwork = Artwork.find(params[:artwork])
    @gallerist = Gallerist.find(params[:id])
    artist = artwork.artist
    artwork.liked_by @gallerist
    if artist.liked? @gallerist
      redirect_to matches_path
    else
      redirect_to artworks_path
    end
  end

  def dislike
    artwork = Artwork.find(params[:artwork])
    @gallerist = Gallerist.find(params[:id])
    artwork.disliked_by @gallerist
    redirect_to artworks_path
  end

  private

  def gallerist_params
    params.require(:gallerist).permit(:first_name, :last_name, :rating, :address, :description, :name, photos: [])
  end
end
