module ApplicationHelper

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
