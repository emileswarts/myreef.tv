class FishtanksController < ApplicationController

	before_filter :signed_in_user, only: [:edit, :update, :create, :destroy]

	def index
	end

	def new
		@fishtank = Fishtank.new
	end

	def edit
	end

	def update
	end

	def show
		@fishtank = Fishtank.new
	end

end
