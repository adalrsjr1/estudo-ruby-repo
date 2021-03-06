#!/usr/bin/env ruby

class Relatorio
  def imprime
    imprime_cabecalho
    imprime_conteudo
  end
end

class HTMLRelatorio < Relatorio
  def imprime_cabecalho
    puts "<html>"
  end

  def imprime_conteudo
    puts "Dados do relatorio"
  end
end

class TextoRelatorio < Relatorio
  def imprime_cabecalho
    puts "***"
  end

  def imprime_conteudo
    puts "Dados do relatorio"
  end
end

relatorio = HTMLRelatorio.new
relatorio.imprime

relatorio = TextoRelatorio.new
relatorio.imprime
