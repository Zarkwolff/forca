require_relative 'colorir'

class Pontuacao
    
    attr_accessor :ponto

    def cor
        Colorir.new       
    end

    def initialize
        @ponto = 0
    end

    def aumentar_pontuacao
        @ponto += 100
        return @ponto
    end

    def diminuir_pontuacao
        @ponto -= 10
        return @ponto
    end

    def mostrar_pontuacao
        if @ponto > 0
            puts cor.verde(@ponto)
        elsif @ponto == 0
            puts cor.azul(@ponto)
        else
            puts cor.vermelho(@ponto)
        end
    end

end
