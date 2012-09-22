class GalleriesController < ApplicationController

	def index
	end

	def edit
	  @gallery = Gallery.find(params[:id])
	end

	def new
	  @gallery = Gallery.new
	end

	def create
		@gallery = current_user.galleries.build(params[:gallery])
		if @gallery.save(params[:gallery] )
			flash[:success] = "Item saved"
			redirect_to @gallery
		else
			flash[:error] = "Could not save"
		end
	end

	def show

	end
end
