class AddTagsToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :photo, index: true
  end
end
