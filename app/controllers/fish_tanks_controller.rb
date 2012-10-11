class FishTanksController < ApplicationController

	before_filter :signed_in_user, only: [:create, :destroy]
	
	def index

	end

end
