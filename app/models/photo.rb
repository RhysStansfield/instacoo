class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  has_and_belongs_to_many :tags

  belongs_to :user 

  validates :description, length: 2..255
  validates :image, attachment_presence: {message: 'required'}

  def tag_list
    ''
  end

  def tag_list=(list)
    list.split(' ').map do |text|
      self.tags << Tag.find_or_create_by(name: text)
    end
  end
end