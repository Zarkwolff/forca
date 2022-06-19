class SortearPalavra
    def self.sortear
      v = []
      p = []
      
      File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
        while line = arq.gets
          v.push(line)
        end
      end
        p = v.sample.split("")
    end
  end
  