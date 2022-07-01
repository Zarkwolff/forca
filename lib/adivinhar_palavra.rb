require_relative 'inicializacao'
require_relative 'sortear_palavra'

class AdivinharPalavra
  attr_reader :erros
  attr_reader :pontuacao
  attr_reader :palavra
  :chutes == []
  attr_reader :seu_chute

  def initialize
    Inicializacao.inicializar
    @erros = 0
    @pontuacao = 0
    @chutes = nil
    @palavra = SortearPalavra.sortear
  end
  
  def tentar_adivinhar
    puts "Chutes errados: #{@erros}"
    puts "Chutes realizados: #{@chutes}"
    puts "Entre com uma letra"
    @seu_chute = gets.chomp
    puts "Seu chute foi #{@seu_chute}. Será que você acertou?"
  end

  def jogar_novamente
    puts "Jogar Novamente? (S/N)"
    quer_jogar = gets.chomp.upcase
    nao_quero_jogar = quer_jogar == "N"
  end

  def jogar
    while erros < palavra.size
      chut = nil
      tentativa = nil
      
      @seu_chute = tentar_adivinhar
      chut = @seu_chute

      tentativa = @seu_chute.size = 1

      if tentativa
        letra = @palavra.count tentativa
        if letra == 0
          puts "Uhhh!! A letra informada não consta na palavra escolhida."
          @erros += 1
        else
          puts "Uau!! A letra informada faz compõem a palavra escolhida #{letra} vezes."
        end
      else
        acertou = chut == @palavra
        if acertou
          puts "Parabéns, você acertou!"
          pontuação += 100
          break
        else
          puts "Que pena, mas nem sempre acertamos..."
          pontuacao -= 25
          @erros += 1
        end
      end
    end
    puts "Você ganhou até o momento #{pontuacao} pontos."
  end
end