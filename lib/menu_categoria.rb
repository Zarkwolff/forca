class MenuCategoria

    cat_sel = []

    def mostrar_opcoes
        puts ("==========")
        puts ("CATEGORIA")
        puts ("==========")
        puts ("Escolha uma das categorias abaixo para jogar:")
        puts ("1 - Animais")
        puts ("2 - Geral")
    end

    def selecionar_opcoes(opc)
        if opc == 1
            @cat_sel = "animais.txt"
        elsif opc == 2
            @cat_sel = "geral.txt"
        end
    end

    def mostra_categoria
        return @cat_sel
    end
end