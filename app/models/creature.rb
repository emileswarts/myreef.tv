class Creature < ActiveRecord::Base

		attr_accessible :date_aquired, :name, :rip_date, :scientific_name, :photo, :photo_file_name, :fishtank_id, :tag_list

		has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#", :mini_thumb => "100x100"}

		acts_as_taggable

		validates :photo, presence: true

		belongs_to :fishtank
		#belongs_to :user

		def self.search(params)
				if params[:tag] 
						tagged_with(params[:tag])
				elsif params[:fishtank_id]
						where(:fishtank_id => params[:fishtank_id])
				elsif params[:q]
						find(:all, :conditions => ['LOWER(name) like ?', "%#{params[:q].downcase}%"])
				else
						find(:all)
				end
		end
end
