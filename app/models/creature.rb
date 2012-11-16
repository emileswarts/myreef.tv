class Creature < ActiveRecord::Base

  attr_accessible :date_aquired, :name, :rip_date, :scientific_name, :photo, :photo_file_name, :fishtank_id, :tag_list

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#", :mini_thumb => "100x100"}

  acts_as_taggable
  acts_as_taggable_on :photo

  validates :photo, presence: true

  belongs_to :fishtank
  belongs_to :user

end
