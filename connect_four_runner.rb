require 'pry'
require './lib/main_menu'
require './lib/user_interface'
require './lib/turn'
require './lib/board'

=begin
What does it mean to play the game
user chooses to play P

user turn starts
board class: show user the board
turn class: check if no open slots  its a draw  end game
 otherwise
user_interface class: ask user to places a piece col A-G

turn class: place it if you can otherwise ask for another choice
 did you connect 4 to win?
end the turn

computer takes a turn
check if no open slots  its a draw  end game
comptuer selects random column
place it if you can otherwise select another random col
did you connect 4 to win?
end the turn


show user the board

=end
#make the menu
menu = MainMenu.new

#make the board
board = Board.new

#make the interface
user_interface = UserInterface.new

turn = Turn.new(board)

#print msg to user
menu.banner

#get user input
user_response = user_interface.getinput

#IF user chooses to play the game
if user_response.upcase == "P"
  #show the board
  board.display
  pry
else
  puts "Why would you say #{user_response}..."
  puts "bye bye"
end
