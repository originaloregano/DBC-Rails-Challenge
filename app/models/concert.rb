class Concert < ApplicationRecord
	has_many :attendances
	has_many :attendees, through: :attendances, source: :user

	validates_presence_of :band, :venue, :date, :start_time
end
