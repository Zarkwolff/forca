require_relative 'lib/adivinhar_palavra'

def novo_jogo
  AdivinharPalavra.new
end

novo_jogo.jogar

opcao = "S"
while opcao == "S"
  puts "Deseja jogar novamente? (S/N)"
  opcao = gets.chomp

  if opcao.upcase == "S"
    novo_jogo.jogar
  else
    puts "Ok, até a proxima..."
    system('exit')
  end
end