require_relative 'sortear_palavra'
require_relative 'inicializacao'
require_relative 'colorir'
require_relative 'pontuacao'


class Jogo

  attr_reader :palavra_escolhida
  attr_accessor :palavra_parcial
  attr_accessor :sua_letra

  def initialize
    Inicializacao.inicializar
    @sua_letra = ''
    @palavra_parcial = []
    @palavra_escolhida = SortearPalavra.sortear
  end
  
  def jogar 
    esconder_palavra
    verificar_tentativa
    mensagem_fim_de_jogo
  end

  def ponto
    Pontuacao.new
  end

  def cor
    Colorir.new
  end

  def esconder_palavra

    palavra_tamanho = @palavra_escolhida.size
    
    palavra_tamanho.times do
      @palavra_parcial << " _ "
    end
    
    puts cor.azul(@palavra_parcial.join)

  end

  def solicitar_tentativa    
      puts "Escolha uma letra:"
      letra = gets.chomp
      @sua_letra = letra
  end

  def verificar_tentativa
    fim = false
    while fim == false
      
      solicitar_tentativa
    
      aux = 0

      @palavra_escolhida.each_char do |letra|
        if @palavra_parcial[aux] == ' _ '
          if letra == @sua_letra
            @palavra_parcial[aux] = @sua_letra
            ponto.aumentar_pontuacao
          else
            ponto.diminuir_pontuacao
          end
        end
        aux += 1
      end

      if @palavra_parcial.join.count(" _ ") > 0
        fim = false
        puts cor.azul(@palavra_parcial.join)
        puts ponto.mostrar_pontuacao
      else
        fim = true
      end
    end
  end

  def mensagem_fim_de_jogo
    puts cor.verde("Parabéns!! Você acertou, a palavra escolhida era #{cor.azul(@palavra_parcial.join)}")
    sleep(3)
  end

end