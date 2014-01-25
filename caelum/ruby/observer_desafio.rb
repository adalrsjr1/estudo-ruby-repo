#!/usr/bin/env ruby

module Observer
  def initialize
    @observers = []
  end

  def adiciona_observer(observer)
    @observers << observer
  end

  def notifica
    @observers.each do |observer|
      observer.alerta
    end
  end
end

class Restaurante
  include Observer
  
  def qualifica(nota)
    puts "Restaurante recebeu nota #{nota}"
    notifica
  end

  def add_franquia(franquia)
    adiciona_observer(franquia)
  end

end

class Franquia

  def alerta
    puts "Um restaurante foi qualificado"
  end

end

rest1 = Restaurante.new

rest2 = Restaurante.new

franq1 = Franquia.new
franq2 = Franquia.new

rest1.add_franquia(franq1)

rest2.add_franquia(franq1)
rest2.add_franquia(franq2)

rest1.qualifica(10)

puts ""

rest2.qualifica(7)
