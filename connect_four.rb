require './lib/user_interface'
require './lib/turn'
require './lib/board'
###----------------------------------------
# connect_four.rb
# Main runner file for the game
###----------------------------------------

###
# create our classes
###
board = Board.new
user_interface = UserInterface.new
turn = Turn.new(board)
game_count = 0

###
# loop till player quits game with q
###
loop do
  user_interface.welcome_banner
  user_response = user_interface.getinput
  #First game print welcome_banner
  if game_count == 0
    turn.start
  end

  # user chooses to play the game
  if user_response.upcase == "P"
    game_count += 1
    board.display
    until board.board_is_full? || board.won? do

      turn.take_turn("human")
      if board.won?
        board.display
        user_interface.human_winner
        board.clear_board
        break
      end

      if board.board_is_full?
        board.display
        user_interface.draw
        board.clear_board
        break
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
        break
      end
      board.display
    end
  else
    # user input anything except p exit the program
    puts "Why would you say #{user_response}..."
    puts "bye bye"
    break
  end
end
