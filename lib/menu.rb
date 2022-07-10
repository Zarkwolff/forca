require_relative 'adivinhar_palavra'
class Menu
    
    def novo_jogo
        AdivinharPalavra.new
    end

    def selecionar_opcoes(opc)
        if opc == 1
            novo_jogo.jogar
        end
        if opc == 2
            puts "Até a próxima guerreiro, que Odin lhe proteja!!"
            system(exit)
        else
            puts "Opção inválida!!"
        end
    end
end