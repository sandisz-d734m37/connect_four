require './lib/main_menu'
require './lib/board.rb'
require 'pry'
menu = MainMenu.new
board = Board.new

menu.banner
start = gets.chomp

if start.upcase == "P"
  binding.pry
  board.display
elsif start.upcase == "Q"

else
  puts "Why would you say #{start}..."
end
