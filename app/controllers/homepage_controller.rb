class HomepageController < ApplicationController

  def index
    @photos = Photo.all
  end

end
