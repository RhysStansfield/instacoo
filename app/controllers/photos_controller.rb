class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(params[:photo].permit(:image))
    flash[:notice] = 'Photo added'
    redirect_to photos_path
  end

end
