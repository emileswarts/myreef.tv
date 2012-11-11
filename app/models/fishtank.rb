class Fishtank < ActiveRecord::Base

  attr_accessible :capacity, :photo, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :make, :title, :age, :description

  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#"}

  belongs_to :users

  has_many :galleries, dependent: :destroy

  default_scope order: 'fishtanks.created_at DESC'

  validates :title, presence: true, length: { maximum: 200 }
  validates :photo, presence: true
  validates :user_id, presence: true
end
