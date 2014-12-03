# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.new({:cuenta => "secretaria", :nombre => "secretaria",:password => "Clinica5458.", :password_confirmation => "Clinica5458.", :rol => "secretaria"}).save(:validate => false)
User.new({:cuenta => "oscar", :nombre => "luisoscarm",:password => "Clinica9398.", :password_confirmation => "Clinica9398.", :rol => "paciente"}).save(:validate => false)
