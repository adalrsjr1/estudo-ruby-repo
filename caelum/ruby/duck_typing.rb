#!/usr/bin/env ruby

class Franquia
  def info
    puts "restaurante faz parte da franquia"
  end
end

class Restaurante < Franquia
  def info
    super
    puts "Restaurante Fazano"
  end
end

def informa(franquia)
  franquia.info
end

restaurante = Restaurante.new
restaurante.info
informa(restaurante)


