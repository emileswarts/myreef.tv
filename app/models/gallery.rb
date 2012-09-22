class Gallery < ActiveRecord::Base

  attr_accessible :photo
  attr_accessible :title
  attr_accessible :photo_file_name
  attr_accessible :photo_content_type
  attr_accessible :photo_file_size
  attr_accessible :photo_updated_at

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "100x100>"}

  belongs_to :user

  validates :title, presence: true, length: { maximum: 200 }
  validates :photo, presence: true
  validates :user_id, presence: true

  default_scope order: 'galleries.created_at DESC'
end
