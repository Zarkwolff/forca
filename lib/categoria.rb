class Categoria
    attr_accessor :palavra

    def initialize
        @palavra = []
    end

    
    def exibe_categoria
        puts '==============='
        puts '   CATEGORIA   '
        puts '==============='
        puts '1 - Animais'
        puts '2 - Geral'
    end

    palavra_sorteada  = nil

    def seleciona_categoria(opcao)


        @categoria = opcao

        if @categoria == 1

            File.open(File.expand_path('../../palavras/animais.txt', __FILE__), 'r') do |arq|
                while line = arq.gets
                    @palavra.push(line)
                end
            end

            @palavra_sorteada = @palavra.sample.chomp

        elsif @categoria == 2

            File.open(File.expand_path('../../palavras/geral.txt', __FILE__), 'r') do |arq|
                while line = arq.gets
                    @palavra.push(line)
                end
            end

            @palavra_sorteada = @palavra.sample.chomp

        end

    end

    def sortear_palavra
        return @palavra_sorteada
    end
end