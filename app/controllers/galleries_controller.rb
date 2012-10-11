class GalleriesController < ApplicationController

	before_filter :signed_in_user, only: [:create, :destroy]

	def index
		#Filters can be:
		#By user, keyword search, top rated, tags.  Default latest
		if params[:tag] 
			@galleries = Gallery.tagged_with(params[:tag]).paginate(page: params[:page])
		else
			@galleries = Gallery.paginate(page: params[:page])
		end
	end

	def update
	  @gallery = Gallery.find(params[:id])
		if @gallery.update_attributes(params[:gallery])
			flash[:success] = "Image updated"
			redirect_to @gallery
		else
			render 'edit'
		end
	end

	def edit
	  @gallery = Gallery.find(params[:id])
	end

	def new
	  @gallery = Gallery.new
	end

	def destroy
		@gallery = Gallery.find(params[:id]).destroy
		flash[:success] = "Image deleted"
		redirect_to @gallery
	end

	def create

		@gallery = user.fishtank.build( params[:gallery] )

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
