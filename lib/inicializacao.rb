require 'tty-spinner'

class Inicializacao
  def self.inicializar
    system('cls')
    system('color 3')
    spinner = TTY::Spinner.new("[:spinner] Carregando...", format: :pulse_2)
    spinner.auto_spin
    sleep(4)
    spinner.stop
    system('cls')
    system('color 9')

  end
end