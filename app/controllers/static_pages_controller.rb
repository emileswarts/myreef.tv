class StaticPagesController < ApplicationController
  def home
			@users = User.find(:all)
  end

  def help
  end

  def about
  end
end
