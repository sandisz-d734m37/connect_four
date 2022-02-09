require './lib/main_menu'
menu = MainMenu.new

menu.banner
start = gets.chomp

if start.upcase == "P"
  File.open("board.txt").each do |line|
    puts line
  end
elsif start.upcase == "Q"

else
  puts "Why would you say #{start}..."
end
