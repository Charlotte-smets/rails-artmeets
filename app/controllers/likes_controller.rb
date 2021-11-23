class LikesController < ApplicationController

  def index
    @likes = Like.all
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @gallerist = Gallerist.find(params[:gallerist_id])
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    @gallerist = Gallerist.find(params[:gallerist_id])
    @like.gallerist = @gallerist
    @like.save
    redirect_to gallerist_path(@gallerist)
  end

  private

  def review_params
    params.require(:like).permit(:content)
  end

end
