class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  # def create
  #   artist.favorited?(gallerist) && gallerist.favorited?(artist)
  # end
end
