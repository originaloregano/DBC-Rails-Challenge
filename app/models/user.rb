class User < ApplicationRecord
	has_many :attendances
	has_many	:concerts, through: :attendances
	include BCrypt

	has_secure_password

	validates_presence_of :first_name, :last_name, :email, :password
	validates_uniqueness_of :email
end
