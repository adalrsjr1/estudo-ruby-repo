# declaracao do metodo
def qualifica(nota)
	puts "A nota do restaurante foi #{nota}"
end

qualifica(10)

def qualifica(nota, msg="Obrigado")
	puts "A nota do restaurante foi #{nota}. #{msg}"
end
qualifica(10)
qualifica(1, "Comida ruim.")

class Restaurante
	
	def qualifica(nota, msg="Obrigado!")
		puts "A nota do restaurante foi #{nota}. #{msg}"
	end
end

rest1 = Restaurante.new
rest2 = Restaurante.new

rest1.qualifica(10)
rest2.qualifica(1, "Ruim!")

class Restaurante
	def initialize(nome)
		puts "criando novo restaurante: #{nome}"
		@nome = nome
	end

	def qualifica(msg="Obrigado!")
		puts "A nota #{@nome} foi #{@nota}. #{msg} "
	end

	def nota=(nota)
		@nota = nota
	end

	def nota
		@nota
	end
end

rest1 = Restaurante.new("Fazano")
rest2 = Restaurante.new("Fogo de Chao")
rest1.nota = 10
rest2.nota = 1
rest1.qualifica
rest2.qualifica("Comida ruim.")

class Restaurante
	attr_accessor :nota

	def initialize(nome)
		puts "criando novo restaurante: #{nome}"
		@nome = nome
	end

	def qualifica(msg="Obrigado!")
		puts "A nota #{@nome} foi #{@nota}. #{msg} "
	end
end

rest1 = Restaurante.new("Fazano")
rest1.nota = 10
rest1.qualifica
