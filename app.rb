require_relative 'lib/menu'

menu = Menu.new

opc = 0

until opc == 3
  menu.mostra_opcoes
  opc = gets.chomp.to_i
  menu.selecionar_opcoes(opc)
end