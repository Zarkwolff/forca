require_relative 'adivinhar_palavra'
require 'pastel'

class MenuJogo
    
    def novo_jogo(adivinhar_palavra)
        adivinhar_palavra.jogar
    end

    def mostrar_nome_do_jogo
        cor = Pastel.new
        system('cls')
        puts cor.green("===============")
        puts "FORCA DIVERSÃO"
        puts cor.green("===============")
    end

    def mostra_opcoes
        mostrar_nome_do_jogo        
        puts "1 - Novo Jogo"
        puts "2 - Sair"
    end

    def selecionar_opcoes(opc)
        if opc == 1
            sleep(2)
            novo_jogo.jogar              
        end
        if opc == 2
            system(exit)
        end
    end
end