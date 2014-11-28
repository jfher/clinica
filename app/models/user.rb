class User < ActiveRecord::Base
	VALID_PASSWORD = /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)./i
	before_create :usuario_default
	before_save :inizilizar_secretaria
	attr_accessible :password,:cuenta,:nombre,:password_confirmation
	validates :cuenta, presence: true, uniqueness: {case_sensitive: false}
	validates :nombre, presence: true, length: { minimum: 10}
	validates :password, presence: true, format: {with: VALID_PASSWORD }, length: { minimum: 8, maximum: 40 }
	validates :password_confirmation, presence: true, length: { minimum: 8 }
	has_secure_password


	def usuario_default
		self.rol ='paciente'
	end
	def inizilizar_secretaria
		if self.id == 1
			self.rol= 'secretaria'
		end
	end



end

