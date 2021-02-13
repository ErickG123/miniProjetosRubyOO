# Usando biblioteca externa
require 'awesome_print'
require './class/carro.rb'
require './class/pessoa.rb'

erick = Pessoa.new("Erick")
carro = Carro.new("Modelo", erick)

ap erick
ap carro