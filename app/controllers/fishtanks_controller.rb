class FishtanksController < ApplicationController

	before_filter :signed_in_user

	def index
		@fishtanks = current_user.fishtanks
		# @creatures = @fishtanks.creatures
	end

	def new
		@fishtank = Fishtank.new
	end

	def destroy
		@fishtank = Fishtank.find(params[:id])
		@fishtank.destroy
		flash[:success] = "Fish tank deleted"
		redirect_to current_user
	end

	def create
		@fishtank = current_user.fishtanks.build(params[:fishtank])

		if @fishtank.save
			flash[:success] = "Success"
			redirect_to current_user
		else
			flash[:error] = "Error"
			redirect_to current_user
		end
	end

	def edit
		@fishtank = Fishtank.find(params[:id])
	end

	def update
	  @fishtank = Fishtank.find(params[:id])
		if @fishtank.update_attributes(params[:fishtank])
			flash[:success] = "Fish tank updated"
			redirect_to current_user
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
