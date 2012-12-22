class StaticPagesController < ApplicationController
  def home
			@users = User.find(:all)
			@creatures = Creature.find(:all)
			@fishtanks = Fishtank.find(:all)
			@user = current_user

			@featured_timeline_user = User.find(1)

			creature_timeline = Timeline.new
			@year_range = creature_timeline.getUserTimelines(@featured_timeline_user) 
			@year_range_count = 100 / @year_range.count - 2;

  end

  def about
  end
end
