require 'tty-spinner'

class Inicializacao
  def self.inicializar
    system('cls')
    spinner = TTY::Spinner.new("[:spinner] Carregando...", format: :bouncing_ball)
    spinner.auto_spin
    sleep(6)
    spinner.stop
    system('cls')
    
  end
end