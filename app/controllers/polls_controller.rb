class PollsController < ApplicationController
	before_action :set_poll, only:[:show, :results]
	def index
		@polls = Poll.all
	end
	def new
		@poll = Poll.new
		@poll_questions = @poll.questions.build
		@choices = @poll_questions.choices.build

	end
	def create
		@poll = Poll.new poll_params
		if @poll.save
			redirect_to @poll
		else
			render 'new'			
		end

	end
	def count
		results = params[:results]
		results.each do |k,v|
			choice = Choice.find(v)
			choice.counter = choice.counter + 1
			choice.save
		end
		redirect_to results_poll_path(params[:id])
	end
	def show
		@poll_questions = @poll.questions
	end
	def results
	end
	private
		def set_poll
			@poll = Poll.find(params[:id])
			
		end
		def poll_params
			params.require(:poll).permit(:about, questions_attributes: [:id, :title, choices_attributes: [:id, :title]])
		end
end