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

 private

  def gallerist_params
    params.require(:gallerist).permit(:first_name, :last_name, :rating, :address, :description, :name, photos: [])
  end
end
