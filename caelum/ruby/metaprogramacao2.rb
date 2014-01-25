#!/usr/bin/env ruby

class Franquia

  def initialize
    @restaurantes = []
  end
  
  def add_restaurante(restaurante)
    @restaurantes << restaurante
  end

  def expandir(restaurante)
    def restaurante.cadastrar_vips
      puts "Restaurante #{self.nome} agora e com area VIP!"
    end
  end
  
  def method_missing(nome, *args)
    @restaurantes.each do |r|
      return "O restaurante #{r.nome} ja foi cadastrado!" if r.nome.eql? *args
    end
    return "O restaurante #{args[0]} nao foi cadastrado ainda."
  end
end

class Restaurante
  attr_accessor :nome

end

r = Restaurante.new
r.nome = "rest1"

franquia = Franquia.new
franquia.add_restaurante(r)

franquia.expandir(r)
r.cadastrar_vips

puts franquia.ja_cadastrado?("Fazano")
puts franquia.ja_cadastrado?("rest1")
