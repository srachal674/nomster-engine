class PhotoController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to 'AWS_BUCKET'
  end

  private

  def photo_params
    params.require(:picture).permit(:message)
  end
end
