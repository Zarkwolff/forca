require_relative 'lib/menu_principal'
require_relative 'lib/menu_categoria'

menu = MenuPrincipal.new
categoria = MenuCategoria.new

opc = 0

until opc == 2
  menu.mostra_opcoes
  opc = gets.chomp.to_i
  menu.selecionar_opcoes(opc)
end