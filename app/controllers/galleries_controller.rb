class GalleriesController < ApplicationController

	def index
		@galleries = Gallery.paginate(page: params[:page])
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
