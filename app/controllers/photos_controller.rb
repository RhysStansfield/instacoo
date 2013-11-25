class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(params[:photo].permit(:photo))
    if @photo.save
      redirect_to '/'
    else
      render 'new'
      flash[:error] = "THIS DIDN'T SAVE"
    end
  end

end
