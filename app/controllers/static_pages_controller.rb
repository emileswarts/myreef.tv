class StaticPagesController < ApplicationController
  def home
			@users = User.find(:all)
			@creatures = Creature.find(:all)
			@timeline_creatures = Creature.where("timeline_featured = ?", 1)
			@fishtanks = Fishtank.find(:all)
			@user = current_user

			@featured_timeline_user = User.find(1)

			creature_timeline = Timeline.new
			@year_range = creature_timeline.getUserTimelines(@featured_timeline_user) 

			#How long should each year <li> in the timeline be.  eg 2 will be 48% each (-2 for padding)
			@year_range_count = 100 / @year_range.count - 2;

  end

  def about
  end
end
