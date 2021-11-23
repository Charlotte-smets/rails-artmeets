class MatchesController < ApplicationController

  def match
    artist.favorited?(gallerist) && gallerist.favorited?(artist)

  end


end
