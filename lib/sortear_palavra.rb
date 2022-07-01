class SortearPalavra
    def self.sortear

      puts "Escolhendo uma palavra secreta..."

      pa = []
      ps = []
      
      File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
        while line = arq.gets
          pa.push(line)
        end
      end
        ps = pa.sample.chomp.split("")

        puts "Pronto!!"
        puts "A palavra escolhida possui #{ps.size} letras... Boa Sorte!!"
        return ps
    end
  end
  