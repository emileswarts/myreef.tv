class Creature < ActiveRecord::Base

  attr_accessible :date_aquired, :name, :rip_date, :scientific_name, :photo, :photo_file_name, :fishtank_id

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#"}

  validates :photo, presence: true

  belongs_to :fishtank

end
