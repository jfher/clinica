class User < ActiveRecord::Base
	attr_accessible :password,:cuenta,:nombre,:password_confirmation
	validates :cuenta, presence: true, uniqueness: {case_sensitive: false}
	validates :nombre, presence: true, length: { minimum: 10}
	validates :password, presence: true, length: { minimum: 8 }
	validates :password_confirmation, presence: true, length: { minimum: 8 }
	has_secure_password

end
