class SortearPalavra
    def self.sortear

      palavra = []
      
      File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
        while line = arq.gets
          palavra.push(line)
        end
      end
        palavra_sorteada = palavra.sample.chomp

        return palavra_sorteada 
    end 
  end
  