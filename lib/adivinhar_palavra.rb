require_relative 'inicializacao'
require_relative 'sortear_palavra'
#require_relative 'vida'

class AdivinharPalavra

  attr_reader :palavra
  attr_reader :venceu
  attr_reader :vida

  def initialize
    Inicializacao.inicializar
    @palavra = SortearPalavra.sortear
    @venceu = false
  end

  def adivinhar(palavra)
    if palavra == @palavra
      @venceu == true
      return "Acertou!!!"

    else
      return "Errou!! Tente novamtne"
    end
  end
end