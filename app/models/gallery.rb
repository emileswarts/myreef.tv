class Gallery < ActiveRecord::Base

  attr_accessible :photo, :title, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :tag_list

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#"}

  acts_as_taggable
  acts_as_taggable_on :photo

  belongs_to :fish_tank

  validates :title, presence: true, length: { maximum: 200 }
  validates :photo, presence: true
  validates :user_id, presence: true

  default_scope order: 'galleries.created_at DESC'
end
