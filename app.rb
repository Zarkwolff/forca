require_relative 'lib/adivinhar_palavra'
jogo = AdivinharPalavra.new
loop do
  jogo.jogar
  if quer_jogar
    break
  end
end
