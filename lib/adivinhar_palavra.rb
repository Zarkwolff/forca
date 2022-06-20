require_relative 'inicializacao'
require_relative 'sortear_palavra'
#require_relative 'vida'

class AdivinharPalavra

  attr_reader :palavra
  attr_reader :venceu
  resultado = []

  def initialize
    Inicializacao.inicializar
    @palavra = SortearPalavra.sortear
    @venceu = false
    @resultado = nil
  end

  def adivinhar(letra)
  indice = 0
    while indice < @palavra.length
      while @palavra.include?(letra)
        @resultado.push(letra)
      end
    end
    puts @resultado
  end
end