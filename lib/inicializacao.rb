require 'tty-spinner'

class Inicializacao
  def self.inicializar
    system('cls')
    spinner = TTY::Spinner.new("[:spinner] Carregando...", format: :pulse_2)
    spinner.auto_spin
    sleep(4)
    spinner.stop
    system('cls')
    
  end
end