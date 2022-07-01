require_relative 'inicializacao'
require_relative 'sortear_palavra'

class AdivinharPalavra
  attr_reader :erros
  attr_reader :pontuacao
  :chutes == []

  def initialize
    Inicializacao.inicializar
    @erros = 0
    @pontuacao = 0
    @chutes = nil
  end
  
  def tentar_adivinhar(erros, chutes)
    puts "Chutes errados: #{erros}"
    puts "Chutes realizados: #{chutes}"
    puts "Entre com uma letra"
    chute = gets.chomp
    puts "Seu chute foi #{chute}. Será que você acertou?"
    chute
  end

  def jogar(nome)
    palavra = SortearPalavra.ps
    while erros < palavra.size
      
      chute = tentar_adivinhar(erros, chutes)
      chutes << chute

      tentativa = chute.size == 1

      if tentativa
        letra = ps.count tentativa
        if letra == 0
          puts "Uhhh!! A letra informada não consta na palavra escolhida."
          erros += 1
        else
          puts "Uau!! A letra informada faz compõem a palavra escolhida #{letra} vezes."
        end
      else
        acertou = chute == ps
        if acertou
          puts "Parabéns, você acertou!"
          pontuação += 100
          break
        else
          puts "Que pena, mas nem sempre acertamos..."
          pontuacao -= 25
          erros += 1
        end
      end
    end
    puts "Você ganhou até o momento #{pontuacao} pontos."
  end

  def jogar_novamente
    puts "Jogar Novamente? (S/N)"
    quer_jogar = gets.chomp.upcase
    nao_quero_jogar = quer_jogar == "N"
  end
end