require 'tty-spinner'
require 'pastel'

class Inicializacao
  def self.inicializar
    system('cls')
    cor = Pastel.new
    spinner = TTY::Spinner::Multi.new("[:spinner] Preparando o Jogo", format: :arrow, success_mark: cor.green("+"))
    
    sp1 = spinner.register "[:spinner] Iniciando os sistemas"
    sp2 = spinner.register "[:spinner] Procurando uma palavra"
    sp3 = spinner.register "[:spinner] Tomando um café, porque ninguém é de ferro"
    sp4 = spinner.register "[:spinner] Memorizando a palavra."

    sp1.auto_spin.join(2)
    sp1.success
    sp2.auto_spin.join(2)
    sp2.success
    sp3.auto_spin.join(2)
    sp3.success
    sp4.auto_spin.join(2)
    sp4.success
    sleep(1)
    
    system('cls')
    
  end
end