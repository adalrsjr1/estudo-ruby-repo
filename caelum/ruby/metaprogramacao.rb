#!/usr/bin/env ruby

class Restaurante
  def initialize(nome)
    puts "criando um novo restaurante: #{nome}"
	@@total ||= 0
	@@total = @@total + 1
	@nome = nome
  end

  class << self
    def relatorio
	  puts "total: #{@@total}"
	end
  end

end


rest1 = Restaurante.new("rest1")
rest2 = Restaurante.new("rest2")

Restaurante.relatorio

class Relatorio
  @@instance = Relatorio.new

  def self.instance
    return @@instance
  end
  private_class_method :new
end

r1 = Relatorio.instance
r2 = Relatorio.instance

puts r1 == r2

require 'singleton'
class Relatorio
  include Singleton
end

r1 = Relatorio.instance
r2 = Relatorio.instance

puts r1 == r2
