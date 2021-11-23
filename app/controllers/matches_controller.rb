class MatchesController < ApplicationController

  def create
    artist.favorited?(gallerist) && gallerist.favorited?(artist)
  end


end
