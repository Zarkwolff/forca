require_relative 'lib/menu'

menu = Menu.new
opc = 0
until opc == 2
  puts "============="
  puts "FORCA VIKING"
  puts "============="
  puts "1 - Novo Jogo"
  puts "2 - Sair"
  opc = gets.chomp.to_i
  menu.selecionar_opcoes(opc)
end