module ApplicationHelper

	  def find_user_creatures(user) 
		  creatures = Creature.find_by_fishtank_id(fishtank_ids(user))
		  creatures
	  end

	  def fishtank_ids(user)
		  ids = []
		  user.fishtanks.each do |fishtank|
			  ids << fishtank.id 
		  end
		  ids
	  end

	#returns full title on per page basis
	def full_title(page_title)
		base_title = "Myreef.tv"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end


	def homepage?
		if request.path_parameters[:controller] == 'static_pages' && request.path_parameters[:action] == 'home'
			true
		end
	end

end
