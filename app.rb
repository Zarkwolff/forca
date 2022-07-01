require_relative 'lib/adivinhar_palavra'

loop do
  nome = gets
  jogo = AdivinharPalavra.jogar(nome)
  if quer_jogar
    break
  end
end
