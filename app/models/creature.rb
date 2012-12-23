class Creature < ActiveRecord::Base

		attr_accessible :date_aquired, :name, :rip_date, :scientific_name, :photo, :photo_file_name, :fishtank_id, :tag_list, :timeline_featured

		has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "200x200#", :mini_thumb => "100x100"}

		acts_as_taggable

		validates :photo, presence: true

		belongs_to :fishtank

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

		def find_css_width(creature, earliest_start)

				creature_date_aquired_timestamp = creature.date_aquired.to_time.to_i

				today_timestamp = Date.today.to_time.to_f 

				 if creature.rip_date != nil
						 creature_end_date = creature.rip_date.to_time.to_i
				 else
						creature_end_date = today_timestamp
				 end

				creature_difference = creature_end_date - creature_date_aquired_timestamp 

				timeline_timestamp = today_timestamp - earliest_start 

				# remove 8 for padding
				difference = ((creature_difference / timeline_timestamp) * 100) - 8

				 difference

		end

		def find_css_left(creature, earliest_start)
				creature_date_aquired_timestamp = creature.date_aquired.to_time.to_i

				today_timestamp = Date.today.to_time.to_f

				creature_difference = today_timestamp - creature_date_aquired_timestamp 

				timeline_timestamp = today_timestamp - earliest_start 

				difference = (creature_difference / timeline_timestamp) * 100
				difference = (100 - (creature_difference / timeline_timestamp) * 100) + 7

				# "#{today_timestamp} - #{earliest_start}"
				 difference
		end
end
