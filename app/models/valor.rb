class Valor < ActiveRecord::Base
	belongs_to :analisis
	attr_accessible :nombre , :rangoMax , :rangoMin
end
