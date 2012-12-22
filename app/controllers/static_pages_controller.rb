class StaticPagesController < ApplicationController
  def home
			@users = User.find(:all)
			@creatures = Creature.find(:all, :limit => "4")
			@fishtanks = Fishtank.find(:all)
			@user = current_user

			@featured_timeline_user = User.find(1)

			timeline = Timeline.new
			@year_range = timeline.getTimelineYearRange(@featured_timeline_user) 

			@timeline_creatures = Creature.where("timeline_featured = ?", 1)
			@earliest_timeline_creature_timestamp = timeline.getStartDate(@timeline_creatures).to_time.to_i

			#How long should each year <li> in the timeline be.  eg 2 will be 48% each (-2 for padding)
			@year_range_count = 100 / @year_range.count - 2;

  end

  def about
  end
end
