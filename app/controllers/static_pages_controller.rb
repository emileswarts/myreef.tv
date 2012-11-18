class StaticPagesController < ApplicationController
  def home
			@users = User.find(:all)
			@creatures = Creature.find(:all, :limit => 40)
  end

  def help
  end

  def about
  end
end
