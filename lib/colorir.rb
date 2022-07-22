require 'pastel'

class Colorir
    attr_accessor :cor


    def initialize
        @cor = Pastel.new
    end

    def azul(texto)        
        return @cor.blue(texto)
    end

    def verde(texto)
        return @cor.green(texto)
    end

    def vermelho(texto)
        return @cor.red(texto)
    end

    def amarelo(texto)
        return @cor.yellow(texto)        
    end

    def ciano(texto)
        return @cor.cyan(texto)        
    end

end