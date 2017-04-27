class VotesController < ApplicationController
	def index
		@choices = Choice.all
	end
	def show
		
	end
	
end
