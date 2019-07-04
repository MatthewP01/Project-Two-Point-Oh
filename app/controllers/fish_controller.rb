class FishController < ApplicationController

	before_action :authorized

	def index
		@fish = Fish.all
	end

end
