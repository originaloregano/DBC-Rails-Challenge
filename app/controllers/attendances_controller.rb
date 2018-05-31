class AttendancesController < ApplicationController
	include ApplicationHelper
	#respond_to :html, :js, :json # invoked near the top that will allow us to render both html and javascript responses with all of our controller actions

	def index
		@attendances = Attendance.all
	end

	def new
		@attendance = Attendance.new
	end

	def create
		@user = User.find(current_user)
		@concert = Concert.find(params[:concert_id])
		@attendance = @user.attendances.new(concert_id: params[:concert_id])
			respond_to do |format|
			if @attendance.save
				p "wobble"
				format.html { redirect_to @concert, notice: "Enjoy the show!" }
				format.js {} #rails assumes things are in the object
				format.json { render :json}


			else
				p @attendance.errors
				format.html { redirect_to concert_attendances_path }
				format.json { render json: @attendance.errors }
			end
		end
	end

end
