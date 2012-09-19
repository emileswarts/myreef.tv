class Gallery < ActiveRecord::Base

  attr_accessible :title, :file

  belongs_to :user

  validates :user_id, presence: true
end
