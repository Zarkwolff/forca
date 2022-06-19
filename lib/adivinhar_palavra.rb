require_relative 'inicializacao'
require_relative 'sortear_palavra'
#require_relative 'vida'

class AdivinharPalavra

  attr_reader :palavra
  attr_reader :venceu
  attr_reader :resultado

  def initialize
    Inicializacao.inicializar
    @palavra = SortearPalavra.sortear
    @venceu = false
  end

  def adivinhar(letra)
    until @resultado == @palavra
      @palavra.each |n|
      if n == letra
        @resultado.push(letra)
      else
        @resultado.push("_")
      end
    end
    puts "Parabéns, você acertou a palavra é #{resultado}"
  end
end