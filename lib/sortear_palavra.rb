class SortearPalavra
    def self.sortear

      pa = []
      ps = []
      
      File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
        while line = arq.gets
          pa.push(line)
        end
      end
        ps = pa.sample.chomp.split("")
    end
  end
  