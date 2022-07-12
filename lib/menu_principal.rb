require_relative 'adivinhar_palavra'
require_relative 'menu_categoria'
require 'pastel'

class MenuPrincipal
    
    def categoria
        menu_cat = MenuCategoria.new
        menu_cat.mostrar_opcoes
        opc_cat = gets.chomp.to_i
        menu_cat.selecionar_opcoes(opc_cat)
        puts menu_cat.mostra_categoria
    end
    
    def novo_jogo
        AdivinharPalavra.new
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
            categoria
            sleep(2)
            novo_jogo.jogar              
        end
        if opc == 2
            system(exit)
        end
    end
end