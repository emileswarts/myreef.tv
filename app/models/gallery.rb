class Gallery < ActiveRecord::Base
  attr_accessible :file, :title, :user_id, :file
end
