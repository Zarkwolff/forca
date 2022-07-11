require_relative 'adivinhar_palavra'
require 'pastel'
class Menu

    
    
    def novo_jogo
        AdivinharPalavra.new
    end

    def mostra_opcoes
        cor = Pastel.new
        system('cls')
        puts cor.green("===============")
        puts "FORCA DIVERSÃO"
        puts cor.green("===============")
        puts "1 - Novo Jogo"
        puts "2 - Sair"
    end

    def selecionar_opcoes(opc)
        if opc == 1
            novo_jogo.jogar
        end
        if opc == 2
            puts "Até a próxima!!"
            system(exit)
        end
    end
end