class GalleriesController < ApplicationController

	def index
		@galleries = Gallery.paginate(page: params[:page])
	end

	def edit
	  @gallery = Gallery.find_by_user_id(current_user)
	end

	def new
	  @gallery = Gallery.new
	end

	def destroy

		@gallery = Gallery.find(params[:id])
		#logger.debug @gallery.methods

		flash[:success] = "Success"
		redirect_to @gallery
	end

	def create

		@gallery = current_user.galleries.build( params[:gallery] )

		if @gallery.save
			flash[:success] = "Success"
			redirect_to @gallery
		else
			flash[:error] = "Error"
			redirect_to @gallery
		end
	end

	def show
	  @gallery = Gallery.find(params[:id])
	end
end
