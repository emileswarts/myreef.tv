class Fishtank < ActiveRecord::Base

  attr_accessible :capacity, :image, :make, :model, :age

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#"}

  belongs_to :users

  has_many :galleries, dependent: :destroy

  default_scope order: 'fishtanks.created_at DESC'
end
