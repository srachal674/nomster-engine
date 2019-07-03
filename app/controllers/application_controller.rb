class ApplicationController < ActionController::Base

  def index
    @places = Place.paginate :page => params[:page], :per_page => 50
  end
end

