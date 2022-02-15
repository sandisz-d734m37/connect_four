require 'pry'
#require './lib/main_menu'
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
gameboard = [[".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."]]
board = Board.new(gameboard)
user_interface = UserInterface.new
player = "human"
turn = Turn.new(player, board)
game_count = 0
###
# loop till player quits game with q
loop do
  #print msg to user
  user_interface.welcome_banner

#get user input
  user_response = user_interface.getinput
  if game_count == 0
    turn.start
  end

#IF user chooses to play the game
  if user_response.upcase == "P"
    game_count += 1
    until board.board_is_full? || board.won? do

      turn.take_turn("human")
      if board.won?
        user_interface.human_winner
        board.clear_board
        break
      end
      if board.board_is_full?
        user_interface.draw
        board.clear_board
      end

      turn.take_turn("comp")
      if board.won?
        board.display
        user_interface.comp_winner
        board.clear_board
        break
      end
      if board.board_is_full?
        user_interface.draw
        board.clear_board
      end
    end
  else
    puts "Why would you say #{user_response}..."
    puts "bye bye"
    break
  end
end
