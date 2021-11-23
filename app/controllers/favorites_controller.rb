class FavoritesController < ApplicationController

  def create
    gallerist = Gallerist.find(params[:gallerist_id])
    artwork = Artwork.find(params[:favorite][:artwork_id])
    gallerist.favorite(artwork)
    redirect_to artist_path(artwork.artist)
  end
end
