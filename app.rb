require_relative 'lib/adivinhar_palavra'

jogo = AdivinharPalavra.new

until jogo.venceu
  puts "Escolhi uma palavra, você consegue adivinhar qual é?"
  letra = gets
  puts jogo.adivinhar(letra)
end
