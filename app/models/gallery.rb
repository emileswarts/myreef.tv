class Gallery < ActiveRecord::Base

  attr_accessible :title, :photo
  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "100x100>"}
  attr_accessor :photo_file_name
  attr_accessor :photo_content_type
  attr_accessor :photo_file_size
  attr_accessor :photo_updated_at

  belongs_to :user

  validates :title, presence: true, length: { maximum: 200 }
  validates :user_id, presence: true

  default_scope order: 'galleries.created_at DESC'
end
