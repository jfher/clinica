class User < ActiveRecord::Base
	VALID_PASSWORD = /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)./i

	attr_accessible :password,:cuenta,:nombre,:password_confirmation
	validates :cuenta, presence: true, uniqueness: {case_sensitive: false}
	validates :nombre, presence: true, length: { minimum: 10}
	validates :password, presence: true, format: {with: VALID_PASSWORD }, length: { minimum: 8, maximum: 40 }
	validates :password_confirmation, presence: true, length: { minimum: 8 }
	has_secure_password
end