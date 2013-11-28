module ApplicationHelper

  def all_tags photo
    tags = photo.tags.map do |tag|
      link_to tag.name, tag_path(tag)
    end

    tags.join(', ').html_safe
  end

end
