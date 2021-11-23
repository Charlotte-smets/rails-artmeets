class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @artists = current_user.artists
    @artworks = current_user.artworks
  end
end
