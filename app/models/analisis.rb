class Analisis < ActiveRecord::Base
	has_many :valors
	attr_accessible :nombre , :user_id
end
