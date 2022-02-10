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

###
# create our classes
###
board = Board.new
user_interface = UserInterface.new

#print msg to user
user_interface.welcome_banner

#get user input
user_response = user_interface.getinput

player = "human"

#IF user chooses to play the game
if user_response.upcase == "P"
  #show the board
  turn = Turn.new(player)
  turn.start
  until board.board_is_full? == true do
    turn.take_turn("human")
    turn.take_turn("comp")
  end
else
  puts "Why would you say #{user_response}..."
  puts "bye bye"
end
