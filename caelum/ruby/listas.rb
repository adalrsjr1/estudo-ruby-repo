#!/usr/bin/env ruby
nomes = []

nomes[0] = "Fazano"
nomes << "Fogo de Chao"

for nome in nomes
	puts nome
end


class Franquia
	def initialize
		@restaurantes = []
	end

	def add(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end
end

class Restaurante
	attr_accessor :nome

	def fechar_conta(dados)
		puts "Conta fechada no valor de #{dados[:valor]} e com #{dados[:nota]}.
		Comentario: #{dados[:comentario]}"
	end
end

rest1 = Restaurante.new
rest1.nome = "Fazano"
rest2 = Restaurante.new
rest2.nome = "Fogo de Chao"

franquia = Franquia.new
franquia.add rest1, rest2

franquia.mostra

rest1.fechar_conta :valor => 50, :nota => 9, :comentario => 'Gostei!'

franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end
