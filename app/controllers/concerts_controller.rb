class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all.order('date ASC')
	end

	def show
		@concert = Concert.find(params[:id])
		@attendances = @concert.attendees
	end

	private

	def concert_params
		params.require(:concert).permit(:band, :venue, :date, :start_time)
	end 
end
