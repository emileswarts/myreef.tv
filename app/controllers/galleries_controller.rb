class GalleriesController < ApplicationController

	before_filter :signed_in_user, only: [:update, :edit, :create, :destroy]

	def index
		if params[:tag] 
			@galleries = Gallery.tagged_with(params[:tag]).paginate(page: params[:page])
		else
			@galleries = Gallery.where(:fishtank_id => params[:fishtank_id]).paginate(page: params[:page])
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
	  @fishtank = Fishtank.find(params[:fishtank_id])
	  @gallery = @fishtank.galleries.new
	end

	def destroy
		@gallery = Gallery.find(params[:id]).destroy
		flash[:success] = "Image deleted"
		redirect_to @gallery
	end

	def create
	    @gallery = Gallery.new(params[:gallery])

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
