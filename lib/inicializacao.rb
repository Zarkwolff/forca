require 'tty-spinner'
require 'pastel'

class Inicializacao
  def self.inicializar
    system('cls')
    cor = Pastel.new
    spinner = TTY::Spinner::Multi.new("[:spinner] Forca Viking", format: :arrow, success_mark: cor.green("+"))
    
    sp1 = spinner.register "[:spinner] indo até Asgard"
    sp2 = spinner.register "[:spinner] Escolhendo uma palavra"
    sp3 = spinner.register "[:spinner] Guardando a palvra dentro da caixa de Pandora"

    sp1.auto_spin.join(2)
    sp1.success
    sp2.auto_spin.join(2)
    sp2.success
    sp3.auto_spin.join(2)
    sp3.success
    sleep(1)
    
    system('cls')
    
  end
end