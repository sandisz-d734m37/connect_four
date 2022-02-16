require './lib/user_interface'
require './lib/board'
###----------------------------------------
# Turn: Game logic for taking turn between the
#       player and computer
###----------------------------------------
class Turn
  attr_reader :board

  def initialize(board)
    @user_interface = UserInterface.new
    @board = board
  end

  def start
    @user_interface.place_msg
  end

  def take_turn(type)

    if type == "human"

      user_response = @user_interface.getinput.upcase
      until user_response.match(/[A-G]/) && user_response.length == 1
      # loop with verifyed input of a single letter A-G

        @user_interface.place_msg
        user_response = @user_interface.getinput.upcase
      end

      while @board.place_piece(user_response,'X') == false
        puts "column full, choose a row other than #{user_response}"
        user_response = @user_interface.getinput.upcase
      end

    else
      comp_response = @user_interface.compinput.upcase
      # get random column choice for computers turn
      while @board.place_piece(comp_response,'O') == false
        comp_response = @user_interface.compinput.upcase
      end
    end
  end
end
