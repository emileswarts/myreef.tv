class StaticPagesController < ApplicationController
  def home
			@users = User.find(:all)
			@creatures = Creature.find(:all)
			@fishtanks = Fishtank.find(:all)
  end

  def about
  end
end
