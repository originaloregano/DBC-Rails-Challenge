class Attendance < ApplicationRecord
	belongs_to :user
	belongs_to :concert

	validates_presence_of :concert_id, :user_id
	validates_uniqueness_of :concert_id, scope: :user_id
end
