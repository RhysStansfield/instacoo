class PhotosController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def edit 
    @photo = current_user.photos.find params[:id]
  end

  def update
    @photo = Photo.find params[:id]
    @photo.update(permitted_params)

    flash[:notice] = 'Photo updated'
    redirect_to '/'
  end

  def destroy 
    @photo = current_user.photos.find params[:id]
    @photo.destroy
    redirect_to '/'
  end

  def create
    @photo = current_user.photos.new(permitted_params)
    WebsocketRails[:photos].trigger(:new_photo, 
                  {description: @photo.description, image_url: @photo.image.url(:medium), tags: @photo.tags})

    if @photo.save
      flash[:notice] = 'Photo added'
      redirect_to photos_path
    else
      render 'new'
    end
  end

  def permitted_params
    params[:photo].permit(:image, :description, :title, :tag_list) #, :tag_list)
  end

end
