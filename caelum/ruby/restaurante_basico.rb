#!/usr/bin/env ruby
#encoding: utf-8

#'Olá Mundo' em ruby
print "Ola mundo com print"	# sem quebra de linha
puts "Ola mundo com puts"	# com quebra de linha 
p "Ola mundo com p"			# imprime tudo, inclusive as aspas

nome = "Fazano"
puts "O nome do restaurante é #{nome}"
puts nome.class

# comportamento imutável sem !
nome.upcase
puts nome # Fazano

# comportamento mutável
nome.upcase!
puts nome # FAZANO

# tipos
3.times {
	puts "0 3 é um objeto!"
}

puts 3.class
puts 333333333333333.class

# imprime conta
puts 3*(2+5)/8

#ranges
puts (0..10).each{ |x| puts x}
puts ('a'..'z').each{ |x| puts x}

# estruturas de controle: if
nota = 5 

if nota > 7
	puts "Boa nota!"
else
	puts "Nota ruim!"
end

# estruturas de controle: for
for i in (1..3)
	x = i
	puts x
end
puts x

restaurante ||= "Fogo de Chao"
puts restaurante
