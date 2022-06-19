require_relative 'lib/adivinhar_palavra'

jogo = AdivinharPalavra.new

until jogo.venceu
  puts "Qual palavra escolhi?"
  palavra = gets
  puts jogo.adivinhar(palavra)
end
