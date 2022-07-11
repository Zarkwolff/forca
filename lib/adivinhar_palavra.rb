require_relative 'sortear_palavra'
require_relative 'inicializacao'
require 'pastel'

class AdivinharPalavra

  attr_reader :pontuacao
  attr_reader :palavra_escolhida
  attr_accessor :palavra_parcial

  def initialize
    Inicializacao.inicializar
    @pontuacao = 0
    @palavra_parcial = []
    @palavra_escolhida = SortearPalavra.sortear
  end

  def jogar
    
    palavra_tamanho = @palavra_escolhida.size

    cor = Pastel.new
    
    palavra_tamanho.times do
      @palavra_parcial << " _ "
  end

  puts cor.blue(@palavra_parcial.join)

    fim = false

    while fim == false
      puts "Escolha uma letra:"
      sua_letra = gets.chomp

      aux = 0
      @palavra_escolhida.each_char do |letra_palavra|
        if @palavra_parcial[aux] == ' _ '
          if letra_palavra == sua_letra
            @palavra_parcial[aux] = sua_letra
            @pontuacao += 100
          else
            @pontuacao -= 10
          end
        end
        aux += 1
      end

      if @palavra_parcial.join.count(" _ ") > 0
        fim = false
        puts cor.blue(@palavra_parcial.join)
        if @pontuacao >0
          puts cor.green(@pontuacao)
        else
          puts cor.red(@pontuacao)
        end
      else
        fim = true
      end
    end
    puts cor.green("Parabéns!! Você acertou, a palavra escolhida era #{cor.blue(@palavra_parcial.join)}")
    sleep(3)
  end
end