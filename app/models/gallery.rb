class Gallery < ActiveRecord::Base

  attr_accessible :title, :file

  belongs_to :user

  validates :user_id, presence: true
  default_scope order: 'galleries.created_at DESC'
end
