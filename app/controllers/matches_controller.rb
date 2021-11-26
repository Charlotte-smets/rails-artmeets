class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    # @artist = Artist.find(params[artist_id])
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  # def create
  #   artist.favorited?(gallerist) && gallerist.favorited?(artist)
  # end
end
