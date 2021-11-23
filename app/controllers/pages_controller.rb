class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @artists = Artist.where(user_id: current_user.id)
    @artworks = Artwork.where(user_id: current_user.id)
  end
end
