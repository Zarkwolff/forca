require_relative 'lib/adivinhar_palavra'

jogo = AdivinharPalavra.new

until jogo.venceu
  puts "Tente adivinhar qual palavra foi escolhida"
  palavra = gets
  puts jogo.adivinhar(palavra)
end
