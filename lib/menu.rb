require_relative 'jogo'
require_relative 'colorir'

class Menu

    def novo_jogo
        Jogo.new
    end

    def cor
        Colorir.new
    end

    def mostra_opcoes
        system('cls')
        puts cor.verde("==================")
        puts cor.ciano("ADIVINHA PALAVRA")
        puts cor.verde("==================")
        puts cor.ciano("1 - Novo Jogo")
        puts cor.ciano("2 - Sair")
    end

    def mostrar_advertencia
        system('cls')
        puts cor.amarelo('================Atenção!!================')
        puts cor.ciano('Eu reconheço acentuação das palavras!!!')
        puts cor.amarelo('=========================================')
        sleep(6)
        system('cls')
    end
    
    def mostrar_despedida
        system('cls')
        puts cor.azul('Até a próxima!!!')
    end

    def selecionar_opcoes(opc)
        if opc == 1
            mostrar_advertencia
            novo_jogo.jogar
        end

        if opc == 2
            mostrar_despedida
            system(exit)
        end
    end
end