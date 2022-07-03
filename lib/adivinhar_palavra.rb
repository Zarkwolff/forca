require_relative 'sortear_palavra'
require_relative 'inicializacao'

class AdivinharPalavra

  def initialize
    Inicializacao.inicializar
  end

  palavra_escolhida = SortearPalavra.sortear
  palavra_tamanho = palavra_escolhida.size
  pontuacao = 0
  palavra_parcial = []
  
  palavra_tamanho.times do
    palavra_parcial << " _ "
  end

  puts palavra_parcial.join

  def jogar
    
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
            @pontuacao -= 50
          end
        end
        aux += 1
      end

      if @palavra_parcial.join.count(" _ ") > 0
        fim = false
        puts @palavra_parcial.join
      else
        fim = true
      end
    end
    puts "Parabéns!! Você acertou, a palavra escolhida era #{@palavra_parcial.join}"
  end
end