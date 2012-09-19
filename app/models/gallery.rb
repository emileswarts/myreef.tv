class Gallery < ActiveRecord::Base
  attr_accessible :file, :title, :user_id, :file
  validates :user_id, presence: true
end
