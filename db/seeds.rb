# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.new({:cuenta => "secretaria", :nombre => "secretaria",:password => "Clinica5458.", :password_confirmation => "Clinica5458.", :rol => "secretaria", :control => "true"}).save(:validate => false)
User.new({:cuenta => "bioquimica", :nombre => "bioquimica",:password => "Clinica1234.", :password_confirmation => "Clinica1234.", :rol => "bioquimica", :control => "true"}).save(:validate => false)
User.new({:cuenta => "lomc", :nombre => "Luis Oscar Maldonado Castellon",:password => "Clinica9398.", :password_confirmation => "Clinica9398.", :rol => "paciente", :control => "false"}).save(:validate => false)
User.new({:cuenta => "lfag", :nombre => "Luis Fernando Aruquipa Gamara",:password => "Clinica9893.", :password_confirmation => "Clinica9893.", :rol => "paciente", :control => "false"}).save(:validate => false)
User.new({:cuenta => "noa", :nombre => "Nataly Ortiz Arias",:password => "Clinica4321.", :password_confirmation => "Clinica4321.", :rol => "paciente", :control => "false"}).save(:validate => false)