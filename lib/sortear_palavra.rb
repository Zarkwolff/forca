require_relative 'menu_categoria'
class SortearPalavra

  def self.sortear

    palavra = []
    arq_cat = "geral.txt"
    File.open(File.expand_path("../../palavras/#{arq_cat}", __FILE__), 'r') do |arq|
      while line = arq.gets
        palavra.push(line)
      end
    end
    palavra_sorteada = palavra.sample.chomp

    return palavra_sorteada 
  end 

end
  