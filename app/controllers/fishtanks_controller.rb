class FishtanksController < ApplicationController

	before_filter :signed_in_user

	def index
	end

	def new
		@fishtank = Fishtank.new
	end

	def create
		@fishtank = current_user.fishtanks.build( params[:fishtank] )

		if @fishtank.save
			flash[:success] = "Success"
			redirect_to @fishtank
		else
			flash[:error] = "Error"
			redirect_to @fishtank
		end
	end

	def edit
	end

	def update
	  @fishtank = Fishtank.find(params[:id])
		if @fishtank.update_attributes(params[:fishtank])
			flash[:success] = "Fish tank updated"
			redirect_to @fishtank
		else
			render 'edit'
		end
	end

	def edit
		@fishtank = Fishtank.find(params[:id])
	end

	def show
		@fishtank = Fishtank.find(params[:id])
	end

end
