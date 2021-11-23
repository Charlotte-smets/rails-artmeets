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

 private

  def gallerist_params
    params.require(:gallerist).permit(:first_name, :last_name, :rating, :address, :description, :name, photos: [])
  end
end
