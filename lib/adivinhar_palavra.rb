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
    @resultado = nil
  end

  def adivinhar(letra)

    @palavra.each do |n|
      if n == letra
        @resultado = letra
      else
        @resultado = ("_")
      end
    end
  end


end