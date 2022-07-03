require_relative 'lib/adivinhar_palavra'

jogo = AdivinharPalavra.new




jogo.jogar

puts "Deseja jogar novamente? (S/N)"
opcao = gets.chomp

if opcao.upcase == "S"
  jogo.jogar
else
  puts "Ok, até a proxima..."
end