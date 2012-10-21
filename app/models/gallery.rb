class Gallery < ActiveRecord::Base

  attr_accessible :photo, :title, :tag_list, :fishtank_id

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#"}

  acts_as_taggable
  acts_as_taggable_on :photo

  belongs_to :fishtanks, :autosave => true
  has_many :photos

  validates :title, presence: true, length: { maximum: 200 }
  validates :photo, presence: true
  validates :fishtank_id, presence: true

  default_scope order: 'galleries.created_at DESC'
end
